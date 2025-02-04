import 'package:dio/dio.dart';
import 'package:flutter_application_1/src/model/user.dart';

class UserRepository {
  final String randomUserUrl = "https://randomuser.me/api/";

  Future<User> getUser() async {
    final res = await Dio().get(randomUserUrl);
    Map<String, dynamic> jsonData = res.data["results"][0];
    return User.fromJson(jsonData);
  }
}
