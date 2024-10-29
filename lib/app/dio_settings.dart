import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_flutter/talker_flutter.dart';

const String TOKEN = 'TOKEN';
const String REFRESH_TOKEN = 'RefreshTOKEN';

class DioSetting {
  final Dio _dio;
  final FlutterSecureStorage _storage;
  final Talker _talker;
  Dio get dio => _dio;
  FlutterSecureStorage get storage => _storage;
  DioSetting(this._dio, this._storage,this._talker) {
    _dio.interceptors.addAll([
      TalkerDioLogger(talker: _talker),
      QueuedInterceptorsWrapper(
        onRequest: (options, handler) async {
          final accessToken = await getAccessToken();
          if (accessToken != null && JwtDecoder.isExpired(accessToken)) {
            options.headers['Authorization'] = 'Bearer $accessToken';
          }
          handler.next(options);
        },
        onError: (DioException error, handler) async {
          if (error.response?.statusCode == 401) {
            // If we get a 401, it means the access token has expired.
            final refreshed = await _refreshAccessToken();
            if (refreshed) {
              // Retry the request with a new token
              final newRequest = await _retry(error.requestOptions);
              return handler.resolve(newRequest);
            }
          }
          handler.next(error);
        },
      ),
    ]);
  }

  // Fetch tokens from storage
  Future<String?> getAccessToken() async {
    return await _storage.read(key: TOKEN);
  }

  Future<String?> getRefreshToken() async {
    return await _storage.read(key: REFRESH_TOKEN);
  }

  // Store tokens securely
  Future<void> storeTokens(String accessToken, String refreshToken) async {
    await _storage.write(key: TOKEN, value: accessToken);
    await _storage.write(key: REFRESH_TOKEN, value: refreshToken);
  }

  // Refresh access token
  Future<bool> _refreshAccessToken() async {
    final refreshToken = await getRefreshToken();
    if (refreshToken != null) {
      try {
        final response = await _dio.post(
          'auth/refresh/',
          data: {'refresh': refreshToken},
        );
        if (response.statusCode == 200) {
          await storeTokens(response.data['access'], refreshToken);
          return true;
        }
      } catch (e) {
        print('Token refresh failed: $e');
      }
    }
    return false;
  }

  // Retry the failed request with the new token
  Future<Response> _retry(RequestOptions requestOptions) async {
    final accessToken = await getAccessToken();
    final options = Options(
      method: requestOptions.method,
      headers: {'Authorization': 'Bearer $accessToken'},
    );
    return _dio.request(
      requestOptions.path,
      options: options,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
    );
  }
}
