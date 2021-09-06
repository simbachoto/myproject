

 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'form_screen.dart';

class AddRequestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    //appBar: AppBar(
        title: 'Add Request ',
     theme:  ThemeData(
       primaryColor: Colors.blueGrey.shade400,
     ),

    home: FormScreen(),
    );
  }

}
