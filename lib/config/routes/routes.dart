import 'package:flutter/material.dart';
import 'package:week_two_machine_task/features/presentation/home_page/home_page.dart';
import 'package:week_two_machine_task/features/presentation/notification_page/notification_page.dart';

class Routes{


  static Route<dynamic> getRoutes(RouteSettings routeSettings){
    print("Currently in ${routeSettings.name}");
    switch(routeSettings.name){
      case "home_Screen":
        return MaterialPageRoute(builder: (context)=>const HomePage());
      case "notification_Screen":
        return MaterialPageRoute(builder: (context)=>const NotificationPage());
      default:
        return MaterialPageRoute(builder: (context)=>const Center(child: Text("No Route Generated")));
    }
  }
}