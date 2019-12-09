import 'dart:async';

import 'package:commercial/account/model/user.dart';
import 'package:commercial/model/rest_error.dart';
import 'package:commercial/network/api.dart';
import 'package:commercial/network/endpoint.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpViewModel with ChangeNotifier {
  String _displayName;
  String _phone;
  String _image;
  String _pass;

  // ignore: unnecessary_getters_setters
  String get displayName => _displayName;

  // ignore: unnecessary_getters_setters
  set displayName(String value) {
    _displayName = value;
  }

  // ignore: unnecessary_getters_setters
  String get phone => _phone;

  // ignore: unnecessary_getters_setters
  set phone(String value) {
    _phone = value;
  }

  // ignore: unnecessary_getters_setters
  String get pass => _pass;

  // ignore: unnecessary_getters_setters
  set pass(String value) {
    _pass = value;
  }

  // ignore: unnecessary_getters_setters
  String get image => _image;

  // ignore: unnecessary_getters_setters
  set image(String value) {
    _image = value;
  }

  static SignUpViewModel of(BuildContext context) {
    return Provider.of<SignUpViewModel>(context);
  }

  String validPhone(String phone) {
    if (phone.isEmpty) {
      return "Phone isEmpty";
    }

    _phone = phone;
    return null;
  }

  String validPassword(String pass) {
    if (pass.isEmpty) {
      return "Password isEmpty";
    }

    _pass = pass;
    return null;
  }

  String validName(String name) {
    if (name.isEmpty) {
      return "Name isEmpty";
    }

    _displayName = name;
    return null;
  }

  Future<User> submitSignUp() async {
    print(_displayName);
    var completer = Completer<User>();
    try {
      Response response = await API.get().post(EndPoint.SIGN_UP, data: {
        "displayName": _displayName,
        "avatar": "http://abc.xyz/images.png",
        "phone": _phone,
        "password": _pass,
      });

      User user = User.fromJson(response.data);
      completer.complete(user);
    } on DioError catch (e) {
      RestError error = RestError.fromJson(e.response.data);
      completer.completeError(error);
    }
    return completer.future;
  }
}
