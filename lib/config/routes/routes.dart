import 'package:flutter/material.dart';
import 'package:week_two_machine_task/features/presentation/pages/main_page/main_page.dart';

import '../../features/presentation/pages/home_page/home_page.dart';
import '../../features/presentation/pages/notification_page/notification_page.dart';


class Routes{


  static Route<dynamic> getRoutes(RouteSettings routeSettings){
    print("Currently in ${routeSettings.name}");
    switch(routeSettings.name){
      case "main_Screen":
        return MaterialPageRoute(builder: (context)=>const MainPage());
      case "notification_Screen":
        return MaterialPageRoute(builder: (context)=>const NotificationPage());
      default:
        return MaterialPageRoute(builder: (context)=>const Center(child: Text("No Route Generated")));
    }
  }
}