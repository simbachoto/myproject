
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gigabyte_ticket_system/screens/request.dart';

import '../home.dart';
import 'AddRequest.dart';
import 'Contacts.dart';
import 'Settings.dart';


class NavDrawer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: new Theme(data: Theme.of(context).copyWith(canvasColor: Color.fromARGB(100, 149, 237, 1), //child: child)
          backgroundColor: Colors.lightBlue,
        ),
          child:
          ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Gigabyteltd'),
                accountEmail: Text('Servis@gigabyteltd.com'),
                currentAccountPicture:
                CircleAvatar(
                  backgroundImage: new AssetImage("assets/username.jpg"),
                  maxRadius: 45.0,
                  // backgroundColor: Colors.lightBlue[300],
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: new AssetImage("assets/profile-bg3.jpg")),
                ),
              ),
              //Divider(color: Colors.black),
              ListTile(
                leading: Icon(Icons.receipt),
                title: Text('Request'),
                onTap: (){
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (context) => new RequestPage())
                  );
                },
              ),
              ListTile(
                  leading: Icon(Icons.addchart_outlined),
                  title: Text('Add Request'),
                  onTap: () {
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => new AddRequestPage())
                    );
                  }),
              Divider(color: Colors.black),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: (){
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (context) => new SettingsPage())
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('Contacts'),
                onTap: () =>{
            Navigator.push(context, new MaterialPageRoute(
                builder: (context) => new Contact())
            )
          },
              ),

              Divider(color: Colors.black),
              ListTile(
                title: Text('LogOut'),
                leading: Icon(Icons.exit_to_app),
                onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  //sign Out User



                },

              ),
            ],
          ),
        ));
  }
}
