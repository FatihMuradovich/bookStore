import 'package:book_store/app/dio_settings.dart';
class AuthSettings {
  final DioSetting dioSettings;
  AuthSettings(this.dioSettings);
  // Login method
  Future<bool> login(String username, String password) async {
    try {
      final response = await dioSettings.dio.post(
        'account/login/',
        data: {'username': username, 'password': password},
      );
      if (response.statusCode == 200) {
        await dioSettings.storeTokens(response.data['access'], response.data['refresh']);
        return true;
      }
    } catch (e) {
      print('Login failed: $e');
    }
    return false;
  }

  Future<bool> register(
      String phoneNumber,
      String email,
      String username,
      String password,
      String confirmPassword,
      String firstName,
      String lastName) async {
    try {
      final response = await dioSettings.dio.post(
        'account/registration/',
        data: {
          "phone_number": phoneNumber,
          "email": email,
          "username": email,
          "password": password,
          "confirm_password": confirmPassword,
          "first_name": firstName,
          "last_name": lastName
        },
      );
      if (response.statusCode == 201) {
        await dioSettings.storeTokens(response.data['access'], response.data['refresh']);
        return true;
      }
    } catch (e) {
      print('Login failed: $e');
    }
    return false;
  }

  // Logout method
  Future<void> logout() async {
    await dioSettings.storage.deleteAll();
  }

  // Check if logged in
  Future<bool> isLoggedIn() async {
    final token = await dioSettings.getAccessToken();
    return token != null;
  }
}
