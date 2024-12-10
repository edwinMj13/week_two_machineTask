import 'package:flutter/material.dart';
import 'package:week_two_machine_task/config/utils/colors.dart';
import 'package:week_two_machine_task/config/utils/constants.dart';
import 'package:week_two_machine_task/features/data/data_sources/hardcode_data/home_page_data.dart';
import 'package:week_two_machine_task/features/data/models/trending_model.dart';

import '../../../widgets/home_title_widget.dart';

class HomePageTrendingWidget extends StatelessWidget {
  const HomePageTrendingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const HomeTitleWidget(title: "Trending"),
            TextButton(onPressed: (){}, child: const Text("See all",style: TextStyle(color: AppColors.green),)),
          ],
        ),
        SizedBox(
          height: 250,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 1,
              crossAxisSpacing: 6,
              childAspectRatio: 0.45,
            ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final list = HomePageHardData.trendingList[index];
              return trendingItems(list);
            },
            itemCount: HomePageHardData.trendingList.length,
          ),
        ),
        SizedBox(height: 20,),

      ],
    );
  }

  Row trendingItems(TrendingModel list) {
    return Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(list.image,height: 100,width: 80,fit: BoxFit.cover,),
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(list.name,style: const TextStyle(fontFamily: ConstantsUtils.poppinsFamilyText,fontWeight: FontWeight.bold),),
                Row(
                  children: [
                    getTextItem(list.itemType),
                    getTextItem(", "),
                    getTextItem(list.ethnicity,),
                  ],
                ),
                Row(
                  children: [
                    getTextItem(list.location,),
                    getTextItem(" | "),
                    getTextItem(list.kmAway),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.star,size: 15,),
                    getTextItem(list.customerStars),
                    getTextItem(" | ",),
                    getTextItem(list.deliveryTime),
                  ],
                )
              ],
            )
          ],
        );
  }

  Text getTextItem(String tag) => Text(tag,style: const TextStyle(fontFamily: ConstantsUtils.poppinsFamilyText,color: AppColors.grey));
}
