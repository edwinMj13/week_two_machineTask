import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week_two_machine_task/config/routes/route_names.dart';
import 'package:week_two_machine_task/config/routes/routes.dart';
import 'package:week_two_machine_task/dependency_injection.dart';
import 'package:week_two_machine_task/features/domain/use_cases/notification_cases.dart';
import 'package:week_two_machine_task/features/presentation/home_page/home_page.dart';
import 'package:week_two_machine_task/features/presentation/notification_page/bloc/notification_event.dart';

import 'features/presentation/notification_page/bloc/notification_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  injection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>  getIt<NotificationBloc>(),
      child: MaterialApp(
        title: 'Week 2 Task',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: RouteNames.homeScreen,
        onGenerateRoute: Routes.getRoutes,
      ),
    );
  }
}
