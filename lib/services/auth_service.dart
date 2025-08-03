import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:moaazapp/models/user_model.dart';

class AuthService {
  static SharedPreferences get prefs => _prefs;
  static FlutterSecureStorage get secureStorage => _secureStorage;
  static final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();
  static late SharedPreferences _prefs;

  static UserModel? _currentUser;
  static UserDetails? _userDetails;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static UserModel? get currentUser => _currentUser;
  static UserDetails? get userDetails => _userDetails;

  static Future<void> saveUser(UserModel user) async {
    _currentUser = user;
    _userDetails = user.details;

    // حفظ البيانات الأساسية
    await _prefs.setInt('user_id', user.id);
    await _prefs.setString('user_email', user.email);
    await _prefs.setString('user_type', user.type);
    await _secureStorage.write(key: 'user_token', value: user.token);

    // حفظ تفاصيل المستخدم
    await _saveUserDetails(user.details);
  }

  static Future<void> _saveUserDetails(UserDetails details) async {
    await _prefs.setInt('details_id', details.id);
    await _prefs.setString('details_fname', details.fname);
    await _prefs.setString('details_lname', details.lname);
    await _prefs.setString('details_userName', details.userName);
    // ... حفظ بقية الحقول حسب الحاجة
  }

  static Future<bool> loadUser() async {
    try {
      final token = await _secureStorage.read(key: 'user_token');
      if (token == null) return false;

      _currentUser = UserModel(
        id: _prefs.getInt('user_id') ?? 0,
        email: _prefs.getString('user_email') ?? '',
        type: _prefs.getString('user_type') ?? '',
        details: await _loadUserDetails(),
        token: token,
      );

      _userDetails = _currentUser!.details;
      return true;
    } catch (e) {
      print('Error loading user: $e');
      return false;
    }
  }

  static UserDetails _loadUserDetails() {
    return UserDetails(
      id: _prefs.getInt('details_id') ?? 0,
      fname: _prefs.getString('details_fname') ?? '',
      lname: _prefs.getString('details_lname') ?? '',
      userName: _prefs.getString('details_userName') ?? '',
      password: '', // لا نحفظ كلمة المرور
      // ... بقية الحقول
    );
  }

  static Future<void> logout() async {
    await _prefs.clear();
    await _secureStorage.deleteAll();
    _currentUser = null;
    _userDetails = null;
  }
}