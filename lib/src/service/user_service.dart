import 'dart:developer';

import 'package:flutter_application_1/src/model/user.dart';
import 'package:flutter_application_1/src/repository/user_repository.dart';

class UserService {
  final UserRepository _userRepository = UserRepository();
  User? _user;

  User? get user => _user;

  Future<void> fetchUser() async {
    try {
      _user = await _userRepository.getUser();
    } catch (e, s) {
      log('Error fetching user: $e, $s');
    }
  }
}
