import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gigabyte_ticket_system/Authentication/pass_verif.dart';
import 'package:gigabyte_ticket_system/components/constants.dart';
import 'package:gigabyte_ticket_system/components/size_config.dart';

import 'Verif_Form.dart';

class Verif_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
        EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Text(
                "Sign-In Verification",
                style: headingStyle,
              ),
              Text("We sent your code to +90 533 ***"),
              buildTimer(),
              Verif_Form( ),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationScreen()));
                },
                child: Text(
                  "Resend  Code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 60.0, end: 0.0),
          duration: Duration(seconds: 60),
          builder: (_, value, child) => Text(
           // "00:${value!.toInt()}",
    value.toString() == 0 ? "00:${value.toString()}0" : "00:${value.toString()}",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}