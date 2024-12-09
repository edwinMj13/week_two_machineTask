import 'package:flutter/material.dart';
import 'package:week_two_machine_task/config/routes/route_names.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text("Week 2 Task"),
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context,RouteNames.notificationScreen);
          }, icon: Icon(Icons.more_vert)),
        ],

      ),
    );
  }
}
