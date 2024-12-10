import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:week_two_machine_task/config/routes/route_names.dart';
import 'package:week_two_machine_task/config/utils/colors.dart';
import 'package:week_two_machine_task/config/utils/constants.dart';
import 'package:week_two_machine_task/features/data/data_sources/hardcode_data/home_page_data.dart';
import 'package:week_two_machine_task/features/presentation/pages/home_page/widgets/home_page_appbar_widget.dart';
import 'package:week_two_machine_task/features/presentation/pages/home_page/widgets/home_page_trending_widget.dart';
import 'package:week_two_machine_task/features/presentation/pages/home_page/widgets/home_search_noti_tag.dart';
import 'package:week_two_machine_task/features/presentation/pages/home_page/widgets/like_to_do_widget.dart';
import 'package:week_two_machine_task/features/presentation/widgets/nearby_store_widget.dart';

import '../../../data/models/today_likes.dart';
import '../../widgets/home_discount_carousal_widget.dart';
import '../../widgets/home_title_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeSearchNotiTagWidget(),

              const LikeToDoWidget(),

              const HomeDiscountCarousalWidget(),

              const HomePageTrendingWidget(),

              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/home/refer_earn.png"),
              ),

              const NearbyStoreWidget(),
            ],
          ),
        ),
      );
  }
}
