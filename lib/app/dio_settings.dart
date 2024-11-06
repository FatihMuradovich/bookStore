import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_flutter/talker_flutter.dart';

const String ACCESS_TOKEN_KEY = 'TOKEN';
const String REFRESH_TOKEN_KEY = 'RefreshTOKEN';

class DioSetting {
  final Dio _dio;
  final FlutterSecureStorage _storage;
  final Talker _talker;
  bool _isRefreshing = false;
  final List<Function> _refreshSubscribers = [];
  FlutterSecureStorage get storage => _storage;
  Dio get dio => _dio;
  Talker get talker => _talker;
  DioSetting(this._dio, this._storage, this._talker) {
    _dio.interceptors.addAll([
      TalkerDioLogger(talker: _talker),
      QueuedInterceptorsWrapper(
        onRequest: (options, handler) async {
          final accessToken = await getAccessToken();
          if (accessToken != null) {
            if (!JwtDecoder.isExpired(accessToken)) {
              options.headers['Authorization'] = 'Bearer $accessToken';
            } else if (!_isRefreshing) {
              await _refreshAccessToken();
              options.headers['Authorization'] =
                  'Bearer ${await getAccessToken()}';
            }
          }
          handler.next(options);
        },
        onError: (DioException error, handler) async {
          if (error.response?.statusCode == 401) {
            if (!_isRefreshing) {
              _isRefreshing = true;

              final refreshed = await _refreshAccessToken();
              _isRefreshing = false;

              if (refreshed) {
                _onTokenRefreshed(await getAccessToken() ?? '');
                final newRequest = await _retry(error.requestOptions);
                return handler.resolve(newRequest);
              }
            } else {
              await _addRequestToQueue((String accessToken) {
                error.requestOptions.headers['Authorization'] =
                    'Bearer $accessToken';
                return _retry(error.requestOptions);
              });
            }
          }
          handler.next(error);
        },
      ),
    ]);
  }

  // Fetch tokens from storage
  Future<String?> getAccessToken() async {
    return await _storage.read(key: ACCESS_TOKEN_KEY);
  }

  Future<String?> getRefreshToken() async {
    return await _storage.read(key: REFRESH_TOKEN_KEY);
  }

  // Store tokens securely
  Future<void> storeTokens(String accessToken, String refreshToken) async {
    await _storage.write(key: ACCESS_TOKEN_KEY, value: accessToken);
    await _storage.write(key: REFRESH_TOKEN_KEY, value: refreshToken);
  }

  // Refresh access token
  Future<bool> _refreshAccessToken() async {
    final refreshToken = await getRefreshToken();
    if (refreshToken != null && !JwtDecoder.isExpired(refreshToken)) {
      try {
        final response = await _dio.post(
          'accounts/token/refresh/',
          data: {'refresh': refreshToken},
        );
        if (response.statusCode == 200) {
          await storeTokens(response.data['access'], refreshToken);
          return true;
        }
      } catch (e) {
        _talker.error('Token refresh failed: $e');
      }
    } else {
      _talker.info('Refresh token has expired. Logging out.');
    }
    return false;
  }

  // Retry the failed request with the new token
  Future<Response> _retry(RequestOptions requestOptions) async {
    final accessToken = await getAccessToken();
    final options = Options(
      method: requestOptions.method,
      headers: {
        ...requestOptions.headers,
        'Authorization': 'Bearer $accessToken',
      },
    );
    return _dio.request(
      requestOptions.path,
      options: options,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
    );
  }

  // Subscribers
  Future<void> _addRequestToQueue(Function callback) async {
    _refreshSubscribers.add(callback);
  }

  void _onTokenRefreshed(String accessToken) {
    for (var callback in _refreshSubscribers) {
      callback(accessToken);
    }
    _refreshSubscribers.clear();
  }
}
