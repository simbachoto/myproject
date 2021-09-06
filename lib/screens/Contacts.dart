
/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
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

}*/

import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  List<bool> _selections = List.generate(3, (_) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),

      body:
      Padding(
          padding: EdgeInsets.all(10.0),
          //Image.assets('assets/cover.jpg'),
          child:ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(40),

                    child: ToggleButtons(
                      children: <Widget>[
                        Icon(Icons.add_location),
                        Icon(Icons.phone),
                        Icon(Icons.mail),
                      ],
                      borderColor: Colors.blueGrey,
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(13),
                      borderWidth: 3,
                      isSelected: _selections,
                      onPressed: (int index) {
                        setState(() {
                          _selections[index] = !_selections[index];
                        });
                      },
                    )),
                //]),*/

                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '  '
                        'Address:\n'
                        ''
                        ''
                        ' \n\n61 Bolu Sokak Kizilbas- Nicosia, Cyprus (North) .\n'
                        '\n\n\n'
                        '\nTelephone Numbers:\n'

                        '\nTel: +90 392 228 00 78\n'

                        '\nFax: +90 392 227 71 25\n'
                        '\n\n\n'

                        '\nEmail:\n'

                        '\nbarcode@GigaByteLtd.com \n',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                    overflow: TextOverflow.fade,

                  ),
                ),

              ])
      ),

    );



  }
}

