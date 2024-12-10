import 'package:flutter/cupertino.dart';
import 'package:week_two_machine_task/config/routes/route_names.dart';
import 'package:week_two_machine_task/features/presentation/pages/accounts_page/accounts_page.dart';
import 'package:week_two_machine_task/features/presentation/pages/cart_page/cart_page.dart';
import 'package:week_two_machine_task/features/presentation/pages/home_page/home_page.dart';
import 'package:week_two_machine_task/features/presentation/pages/myorder_page/myorder_page.dart';

import '../../presentation/pages/home_page/widgets/home_page_appbar_widget.dart';

class MainPageCases{
  static ValueNotifier<int> indexNotifier = ValueNotifier(0);

  static setIndex(int value){
    indexNotifier.value = value;
  }

  getMainPageAppBar(int value){
    switch(value){
      case 0:
        return const HomePageAppBarWidget();
      case 1:
        return const Text("Cart");
      case 2:
        return const Text("My Order");
      case 3:
        return const Text("Account");
    }
  }

  getPages(int value){
    print("Get Pages Index $value");
    switch(value){
      case 0:
        return const HomePage();
      case 1:
        return const CartPage();
      case 2:
        return const MyorderPage();
      case 3:
        return const AccountsPage();
      default:
        return const Center(child: Text("No Page Selected"));
    }
  }


}