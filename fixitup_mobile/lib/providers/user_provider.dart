import 'package:fixitup_mobile/models/user_model.dart';
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  late User _user;

  setUserBasicInfo(String username, String email, String password) {
    _user = User(username: username, email: email, password: password);
  }

  signUpUser(String fullName, String userName, String email, String password,
      String location) {}

  User get appUser {
    return _user;
  }
}
