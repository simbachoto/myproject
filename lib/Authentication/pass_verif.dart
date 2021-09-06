
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gigabyte_ticket_system/components/size_config.dart';

import 'VerifPage.dart';

class VerificationScreen extends StatelessWidget {
  static String routeName = "/otp";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Code Verification"),
      ),
      body: Verif_Page(),
    );
  }
}