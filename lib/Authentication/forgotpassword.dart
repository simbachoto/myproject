
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gigabyte_ticket_system/Authentication/pass_verif.dart';
import 'package:gigabyte_ticket_system/components/constants.dart';
import 'package:gigabyte_ticket_system/components/custom_surfix_icon.dart';
import 'package:gigabyte_ticket_system/components/form_error.dart';
import 'package:gigabyte_ticket_system/components/no_account_text.dart';
import 'package:gigabyte_ticket_system/components/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text(
                "  Password Reset",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                "Please enter your email and \n a link will be send to your account",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  late String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue!,
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
              return null;
            },
            validator: (value) {
              if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              labelText: "Email",
              hintText: "Enter your email",
              // If  you are using latest version of flutter then label text and hint text shown like this
              // if you r using flutter less then 1.20.* then maybe this is not working properly
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurfixIcon(svgIcon: "assets/icons/Mail.svg"),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight * 0.1),


          MaterialButton(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20) ,
            minWidth: double.infinity,
            height: 40,
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
              // press: () {
              if (_formKey.currentState!.validate()) {
                // Do what you want to do
                Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationScreen()));
              }
              //},
            },color: Color(0xFF7B1FA2),
            elevation:1,

            //defining the shape of the button
            shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(50)
            ),
            child: Text(
              'Continue',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18, color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          NoAccountText(),
        ],
      ),
    );
  }
}