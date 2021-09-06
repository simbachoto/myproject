

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gigabyte_ticket_system/screens/nav_drawer.dart';
import 'package:gigabyte_ticket_system/screens/routes/constant_router.dart';

import '../home.dart';
import 'dashboard/Issues.dart';
import 'dashboard/Ticket.dart';
import 'dashboard/more.dart';


List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  StaggeredTile.extent(1, 150.0),
  StaggeredTile.extent(1, 150.0),
  StaggeredTile.extent(2, 130.0),
];

List<Widget> _tiles = const <Widget>[
  const MyItems(Icons.receipt_long_outlined, "Ticket", 0xFFAA00FF, "/ticket"),
  const MyItems(Icons.home_repair_service_outlined, "Fixes", 0xff26cb3c,'/issues'),
  const  MyItems(Icons.add, "More..", 0xFF4A148C,'/more'),
];



class Dashboard extends StatefulWidget {

  Dashboard ({ Key? key}) : super (key: key);

  @override
  _DashboardState createState() => _DashboardState();

}

class _DashboardState  extends State<Dashboard>{
  int _selectedIndexForBottomNavigationBar = 0;


  void _onItemTappedForBottomNavigationBar(int index) {
    setState(() {
      _selectedIndexForBottomNavigationBar = index;
    });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     drawer: NavDrawer(),
     appBar: AppBar(
       title: Text('Ticketing system'),
       centerTitle: true,
       backgroundColor: Colors.blueGrey.shade400,
       elevation: 0,
       brightness: Brightness.light,
     ),
     body: Padding(
         padding: const EdgeInsets.only(top: 12.0),
         child: StaggeredGridView.count(
           //crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3,
           crossAxisCount: 2,
           staggeredTiles: _staggeredTiles,
           children: _tiles,
           mainAxisSpacing: 12.0,     //4.0,
           crossAxisSpacing: 12.0, //4.0,
           // shrinkWrap: true,
           padding: const EdgeInsets.all(4.0),
           // padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
         )

     ),
     bottomNavigationBar: BottomNavigationBar(
       type: BottomNavigationBarType.fixed,
       backgroundColor: Colors.blueGrey.shade400,
       onTap: _onItemTappedForBottomNavigationBar, // this will be set when a new tab is tapped
       items: [
         BottomNavigationBarItem(
           // ignore: deprecated_member_use
             icon: new Icon(Icons.home),title: Text('HOME')),
         BottomNavigationBarItem(
           // ignore: deprecated_member_use
             icon: new Icon(Icons.notifications_none),title: Text('NOTIFICATIONS')),
         BottomNavigationBarItem(
           // ignore: deprecated_member_use
             icon: Icon(Icons.help),title: Text('HELP')),

       ],
       currentIndex: _selectedIndexForBottomNavigationBar,
       selectedItemColor: Colors.blue.shade900,
     ),
   );

}
}

class MyItems extends StatelessWidget {
  const MyItems(this.icon, this.heading, this.color, this.routeName);

  final int color;
  final IconData icon;
  final String heading;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        elevation: 12.0,    //12.0,
        shadowColor: Color (0x802196F3),           //(0xff2962ff),
        borderRadius: BorderRadius.circular(20.0),      //(20.0),
        child:Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
                image: new AssetImage('assets/seven.jpg'),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(24.0),
          ),
          child: Center(
              child: Padding(
                  padding: const EdgeInsets.all(4.0),//(16.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            //Text here
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                heading,
                                style: TextStyle(
                                  color: new Color(color),
                                  fontSize: 18.0,
                                ),
                              ),
                            ), //text

                            //icon
                            Material(
                              color: new Color(color),
                              borderRadius: BorderRadius.circular(24.0),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: IconButton(
                                  icon: Icon(icon),
                                  iconSize: 20,
                                  color: Colors.white,
                                  onPressed: () {
                                    Navigator.pushNamed(context, routeName);
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]))),
        ));

  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    var router;
    return MaterialApp(

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: MyItems(),
      onGenerateRoute: router.generateRoute,
      initialRoute: DashboardRoute,
      home: HomePage(),
    );
  }

}
class Ticket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TicketPage();
  }
}

class Fixes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IssuesPage();
  }
}

class More extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MorePages();
  }
}