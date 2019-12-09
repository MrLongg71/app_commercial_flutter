import 'package:commercial/account/model/user.dart';
import 'package:commercial/model/rest_error.dart';
import 'package:commercial/network/EndPoint.dart';
import 'package:commercial/network/api.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dio/dio.dart';
import 'dart:async';

class SignInViewModel with ChangeNotifier {
  String _phone;
  String _password;

  // ignore: unnecessary_getters_setters
  String get phone => _phone;

  // ignore: unnecessary_getters_setters
  set phone(String value) {
    _phone = value;
  }

  // ignore: unnecessary_getters_setters
  String get password => _password;

  // ignore: unnecessary_getters_setters
  set password(String value) {
    _password = value;
  }

  static SignInViewModel of(BuildContext context) {
    return Provider.of<SignInViewModel>(context);
  }

  String validatePhone(String phone) {
    if (phone.isEmpty) {
      return "Phone is empty";
    }
    if (phone.length != 10) {
      return "Phone != 10";
    }
    _phone = phone;
    return null;
  }

  String validatePassword(String password) {
    if (password.isEmpty) {
      return "Password is empty";
    }
    if (password.length < 6) {
      return "Password >= 6";
    }
    _password = password;
    return null;
  }

  Future<User> submit() async {
    var completer = Completer<User>();
    try {
      Response response = await API.get().post(EndPoint.SIGN_IN, data: {
        "phone": _phone,
        "password": _password,
      });

      User user = User.fromJson(response.data);
      //cache user data
      completer.complete(user);
    } on DioError catch (e) {
      RestError restError = RestError.fromJson(e.response.data);
      completer.completeError(restError);
    }
    return completer.future;
  }
}
