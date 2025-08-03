import 'package:moaazapp/models/user_model.dart';

class UserService {
  static UserModel? _currentUser;
  static UserDetails? _userDetails;

  static UserModel? get currentUser => _currentUser;
  static UserDetails? get userDetails => _userDetails;

  static void setUser(UserModel user) {
    _currentUser = user;
    _userDetails = user.details;
  }

  static void clearUser() {
    _currentUser = null;
    _userDetails = null;
  }
}