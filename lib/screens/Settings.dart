
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,),
          // icon: Icon(Icons.menu),
          onPressed: () {
            Navigator.push(context, new MaterialPageRoute(
                builder: (context) => new Dashboard()));
          },
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child:
        Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[


            Card(
              child: ListTile(
                title: Text("Support:"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Email about new services'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/support');
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help & Support'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/support');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.feedback),
              title: Text('Feedback'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/feedback');
              },
            ),
            ListTile(
              leading: Icon(Icons.rate_review),
              title: Text('Rate Us'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/rate-us');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Information'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/info');
              },
            ),
            ListTile(
              leading: Icon(Icons.assistant_photo),
              title: Text('Socials'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/social');
              },
            ),

            //),


          ],
        ),
      ),

    );
  }


}


