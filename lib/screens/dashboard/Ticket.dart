

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TicketPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contacts '),
          centerTitle: true,
          backgroundColor: Colors.blueGrey.shade400,
          elevation: 0,
          brightness: Brightness.light,
        )
    );
  }

}