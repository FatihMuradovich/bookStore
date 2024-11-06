import 'package:book_store/app/dio_settings.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class AuthSettings {
  final DioSetting dioSettings;
  AuthSettings(this.dioSettings);

  // Login method
  Future<String?> login(String username, String password) async {
    try {
      final response = await dioSettings.dio.post(
        'accounts/login/',
        data: {'username': username, 'password': password},
      );
      if (response.statusCode == 200) {
        await dioSettings.storeTokens(response.data['access'], response.data['refresh']);
        return null;  // Success
      } else {
        dioSettings.talker.error('Login failed with status code: ${response.statusCode}');
        return 'Invalid credentials';
      }
    } catch (e) {
      dioSettings.talker.error('Login failed: $e');
      return 'An error occurred during login';
    }
  }

  // Register method
  Future<String?> register(
      String phoneNumber,
      String email,
      String username,
      String password,
      String confirmPassword,
      String firstName,
      String lastName) async {
    try {
      final response = await dioSettings.dio.post(
        'accounts/registration/',
        data: {
          "phone_number": phoneNumber,
          "email": email,
          "username": username,
          "password": password,
          "confirm_password": confirmPassword,
          "first_name": firstName,
          "last_name": lastName
        },
      );
      if (response.statusCode == 201) {
        await dioSettings.storeTokens(response.data['access'], response.data['refresh']);
        return null;  // Success
      } else {
        dioSettings.talker.error('Registration failed with status code: ${response.statusCode}');
        return 'Registration failed';
      }
    } catch (e) {
      dioSettings.talker.error('Registration failed: $e');
      return 'An error occurred during registration';
    }
  }

  // Logout method
  Future<void> logout() async {
    try {
      final refreshToken = await dioSettings.getRefreshToken();
      if (refreshToken != null) {
        await dioSettings.dio.post('accounts/logout/', data: {'refreshToken': refreshToken});
      }
    } catch (e) {
      dioSettings.talker.error('Logout failed: $e');
    } finally {
      await dioSettings.storage.deleteAll();
    }
  }

  // Check if logged in
  Future<bool> isLoggedIn() async {
    final token = await dioSettings.getAccessToken();
    return token != null && !JwtDecoder.isExpired(token);
  }
}
