import 'package:flutter/material.dart';
import 'package:week_two_machine_task/features/presentation/widgets/empty_list_widget.dart';

class MyorderPage extends StatelessWidget {
  const MyorderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: double.infinity,
      width: double.infinity,
      child:  EmptyListWidget(),
    );
  }
}
