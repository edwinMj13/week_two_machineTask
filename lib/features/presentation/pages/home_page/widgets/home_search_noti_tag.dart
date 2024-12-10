import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../config/routes/route_names.dart';
import '../../../../../config/utils/colors.dart';
import '../../../../../config/utils/constants.dart';

class HomeSearchNotiTagWidget extends StatelessWidget {
  const HomeSearchNotiTagWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.ligntGrey,
              ),
              child: const Padding(
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search for products/stores ",
                          hintStyle: TextStyle(
                              fontSize: 15,
                              fontFamily: ConstantsUtils.poppinsFamilyText,
                              color: AppColors.grey),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.search,
                      color: AppColors.green,
                    ),
                  ],
                ),
              ),
            )),
        IconButton(
            onPressed: () =>
                Navigator.pushNamed(context, RouteNames.notificationScreen),
            icon: const Badge(
              label: Text("2"),
              backgroundColor: Colors.red,
              child: Icon(
                Icons.notifications_outlined,
                color: Colors.red,
              ),
            )),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.tag,
            color: AppColors.orange,
          ),
        ),
      ],
    );
  }
}
