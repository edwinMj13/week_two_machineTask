import 'package:flutter/cupertino.dart';

import '../../models/bottom_navigation_model.dart';

class DummyData {
  static var bottomNavigData = [
    BottomNavigationModel(title: "Home",icon: CupertinoIcons.home,),
    BottomNavigationModel(title: "Cart",icon: CupertinoIcons.cart,),
    BottomNavigationModel(title: "My Order",icon: CupertinoIcons.bag,),
    BottomNavigationModel(title: "Account",icon: CupertinoIcons.person,),
  ];
}
