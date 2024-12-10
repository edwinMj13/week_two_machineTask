import 'package:flutter/material.dart';
import 'package:week_two_machine_task/config/utils/colors.dart';
import 'package:week_two_machine_task/config/utils/constants.dart';
import 'package:week_two_machine_task/dependency_injection.dart';
import 'package:week_two_machine_task/features/data/data_sources/hardcode_data/dummy_common_data.dart';
import 'package:week_two_machine_task/features/domain/use_cases/main_page_cases.dart';
import 'package:week_two_machine_task/features/presentation/pages/home_page/home_page.dart';

import '../home_page/widgets/home_page_appbar_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ValueListenableBuilder(
          valueListenable: MainPageCases.indexNotifier,
          builder: (context,snap,_){
            return getIt<MainPageCases>().getMainPageAppBar(snap);
          },
        ),
      ),
      body: ValueListenableBuilder(
        valueListenable: MainPageCases.indexNotifier,
        builder: (context,snap,_){
          return getIt<MainPageCases>().getPages(snap);
        },
      ),
      bottomNavigationBar: ValueListenableBuilder(
          valueListenable: MainPageCases.indexNotifier,
          builder: (context, snap, _) {
            return BottomNavigationBar(
              currentIndex: snap,
              selectedItemColor: AppColors.green,
              selectedLabelStyle: const TextStyle(
                  color: Colors.black,
                  fontFamily: ConstantsUtils.poppinsFamilyText),
              unselectedItemColor: AppColors.grey,showUnselectedLabels: true,
              unselectedLabelStyle: const TextStyle(
                  color: Colors.black,
                  fontFamily: ConstantsUtils.poppinsFamilyText),
              onTap: (value) {
                MainPageCases.setIndex(value);
              },
              items: List.generate(
                DummyData.bottomNavigData.length,
                (index) {
                  final list = DummyData.bottomNavigData;
                  return BottomNavigationBarItem(
                    icon: Icon(list[index].icon),
                    label: list[index].title,
                  );
                },
              ),
            );
          }),
    );
  }
}
