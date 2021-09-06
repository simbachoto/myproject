import 'package:flutter/material.dart';
import 'package:gigabyte_ticket_system/components/size_config.dart';

import 'constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    required Key key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      //child: MaterialButton(
      //  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      //  color: kPrimaryColor,
       // onPressed:press,
    //)
        //}
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.black,
          ),
        ),
      );
    //);
  }
}