import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'forgotpassword.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Password Reset"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}