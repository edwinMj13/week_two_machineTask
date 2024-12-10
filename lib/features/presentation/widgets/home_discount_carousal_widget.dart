import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../data/data_sources/hardcode_data/home_page_data.dart';
import 'home_title_widget.dart';

class HomeDiscountCarousalWidget extends StatelessWidget {
  const HomeDiscountCarousalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HomeTitleWidget(
          title:"Top picks for you",
        ),
        const SizedBox(height: 5,),
        CarouselSlider(
          items: HomePageHardData.carousalFirstList.map((item) {
            return Builder(builder: (context) {
              return Container(
                child: Image.asset(item),
              );
            });
          }).toList(),
          options: CarouselOptions(
            height: 210,
            viewportFraction: 1,
            aspectRatio: 2,
            enlargeCenterPage: true,
          ),
        )
      ],
    );
  }
}
