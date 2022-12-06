import 'package:flutter/material.dart';
import '../../components/declarations.dart';
import '../../components/error_handling.dart';
import '../../components/utils.dart';
import '../models/user.dart';

import 'package:http/http.dart' as http;

import 'package:flutter/cupertino.dart';
class AuthService {

  void signUpUser(
      {required BuildContext context, required String email, required String password, required String name}) async {
    try {
      User user = User(id: '',
          name: name,
          password: password,
          address: '',
          type: '',
          token: '',
          email: email);

      http.Response res = await http.post(
          Uri.parse('$myUri01/api/signup'),
          body: user.toJson(),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=utf-8',
          }
      );

      httpErrorHandel(
          response: res,
          context: context,
          onSuccess: () {
            showSnackBar(context, "Account created, Now you are login");
          }
      );
    } catch (err) {
        showSnackBar(context, err.toString());
    }
  }
}