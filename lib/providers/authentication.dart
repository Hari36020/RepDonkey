// import 'dart:convert';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';

class Auth with ChangeNotifier {
  bool _isAuth = false;

  bool validuser;

  bool get isAuth {
    return _isAuth;
  }

  Future<bool> authenticate(String username, String password) async {
    try {
      if (username == "user" && password == "123") {
        _isAuth = true;
      } else {
        _isAuth = false;
      }
      notifyListeners();
    } catch (error) {
      print(error);
      // throw (error);
    }
    return validuser = true;
  }

  Future<void> logout() async {
    _isAuth = false;
    notifyListeners();
  }
}
