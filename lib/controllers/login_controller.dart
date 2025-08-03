import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:moaazapp/constants/base_url.dart';
import 'package:moaazapp/models/user_model.dart';
import 'package:moaazapp/services/auth_service.dart';

class LoginController {
  static Future<bool> login(String email, String password, {bool rememberMe = false}) async {
    try {
      final response = await http.post(
        Uri.parse(BaseUrl.apiLogin),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'email': email, 'password': password}),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        if (data['status'] == true) {
          final user = UserModel.fromJson(data['user']);
          await AuthService.saveUser(user);

          // حفظ بيانات الدخول إذا تم اختيار "تذكرني"
          if (rememberMe) {
            final prefs = AuthService.prefs;
            await prefs.setString('user_email', email);
            await AuthService.secureStorage.write(key: 'user_password', value: password);
          }

          return true;
        }
      }
      return false;
    } catch (e) {
      print('Login error: $e');
      return false;
    }
  }
}
