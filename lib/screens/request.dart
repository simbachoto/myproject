/*import 'package:flutter/material.dart';


class RequestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter CheckboxListTile Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  final names = List<Map<String, dynamic>>.generate(
    20,
        (i) => {'name': 'Player ${i + 1}', 'selected': false},
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CheckboxListTile Widget of the Week'),
        ),
        body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              child: ListTile(
                  title: Text(names[index]['name']),
                  trailing: Icon(Icons.people)
              ),
            );
          },
        ));
  }
}*/

import 'package:flutter/material.dart';

import 'dashboard.dart';
import 'notif_settings.dart';


class RequestPage extends StatelessWidget {
  final String title = 'Request Form';

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(primarySwatch: Colors.deepOrange),
    home: MainPage(title: title),
  );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final allowNotifications = NotificationSetting(title: 'Requests');

  final notifications = [
    NotificationSetting(title: 'Fiyat Istek'),
    NotificationSetting(title: 'Fiyat Istek'),
    NotificationSetting(title: 'Tech Istek'),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(widget.title),
      leading:
      IconButton( onPressed: (){
        Navigator.push(context, new MaterialPageRoute(
            builder: (context) => new Dashboard()));
      },icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
    ),
    body: ListView(
      children: [
        buildToggleCheckbox(allowNotifications),
        Divider(),
        ...notifications.map(buildSingleCheckbox).toList(),
      ],
    ),
  );

  Widget buildToggleCheckbox(NotificationSetting notification) => buildCheckbox(
      notification: notification,
      onClicked: () {
        final newValue = !notification.value;

        setState(() {
          allowNotifications.value = newValue;
          notifications.forEach((notification) {
            notification.value = newValue;
          });
        });
      });

  Widget buildSingleCheckbox(NotificationSetting notification) => buildCheckbox(
    notification: notification,
    onClicked: () {
      setState(() {
        final newValue = !notification.value;
        notification.value = newValue;

        if (!newValue) {
          allowNotifications.value = false;
        } else {
          final allow =
          notifications.every((notification) => notification.value);
          allowNotifications.value = allow;
        }
      });
    },
  );

  Widget buildCheckbox({
    required NotificationSetting notification,
    required VoidCallback onClicked,
  }) =>
      ListTile(
        onTap: onClicked,
        leading: Checkbox(
          value: notification.value,
          onChanged: (value) => onClicked(),
        ),
        title: Text(
          notification.title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      );
}