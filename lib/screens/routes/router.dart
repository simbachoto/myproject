import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gigabyte_ticket_system/screens/dashboard/Issues.dart';
import 'package:gigabyte_ticket_system/screens/dashboard/Ticket.dart';
import 'package:gigabyte_ticket_system/screens/dashboard/more.dart';

import '../dashboard.dart';
import 'constant_router.dart';

class router<T> extends  StatefulWidget {
  static Route <dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case DashboardRoute:
        return MaterialPageRoute(builder: (context) => Dashboard());
      case TicketRoute:
        return MaterialPageRoute(builder: (context) => TicketPage());
      case FixesRoute:
        return MaterialPageRoute(builder: (context) => IssuesPage());
      case MoreRoute:
        return MaterialPageRoute(builder: (context) => MorePages());

      default:
        return MaterialPageRoute(builder: (context) =>
            Scaffold(body: Center(
                child: Text('No route defined for ${settings.name}')),));
    }
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}