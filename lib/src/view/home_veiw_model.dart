import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/src/model/user.dart';
import 'package:flutter_application_1/src/service/user_service.dart';

class HomeViewModel with ChangeNotifier {
  final UserService _userService = UserService();

  User? get user => _userService.user;

  // 사용자 정보 가져오기
  Future<void> fetchUser() async {
    await _userService.fetchUser();
    notifyListeners();
  }
}
