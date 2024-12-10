import 'package:flutter/material.dart';
import 'package:week_two_machine_task/config/utils/colors.dart';
import 'package:week_two_machine_task/features/data/data_sources/hardcode_data/home_page_data.dart';

import '../../../config/utils/constants.dart';
import 'home_title_widget.dart';
import 'package:week_two_machine_task/features/data/models/nearby_stores_model.dart';

class NearbyStoreWidget extends StatelessWidget {
  const NearbyStoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const HomeTitleWidget(title: "Nearby stores"),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "See all",
                  style: TextStyle(color: AppColors.green),
                )),
          ],
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final list = HomePageHardData.nearbyStoresList[index];
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  leftImageSection(list),
                  const SizedBox(
                    width: 10,
                  ),
                  rightSection(list),
                ],
              );
            },
            itemCount: 2,
          ),
        ),
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.green,
              fixedSize: const Size.fromWidth(200),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            child: const Text(
              "View all stores",
              style: TextStyle(color: Colors.white),
            )),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }

  Expanded rightSection(NearbyStoresModel list) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          rightTOPSection(list),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            height: 5,
            color: Colors.black12,
          ),
          const SizedBox(
            height: 5,
          ),
          rightBOTTOMSection(list),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }

  Row rightBOTTOMSection(NearbyStoresModel list) {
    return Row(
          children: [
            Row(
              children: [
                ClipRRect(
                  child: Image.asset(
                    "assets/home/up_to_offer_in_nearby_home.png",
                    height: 15,
                    width: 15,
                  ),
                ),
                const SizedBox(width: 5,),
                Text(
                  list.offer,
                  style: const TextStyle(
                      fontSize: 10,
                      fontFamily: ConstantsUtils.poppinsFamilyText),
                ),
              ],
            ),
            const SizedBox(width: 10,),
            Row(
              children: [
                ClipRRect(
                  child: Image.asset(
                    "assets/home/availability_in_home_nearby.png",
                    height: 15,
                    width: 15,
                  ),
                ),
                const SizedBox(width: 5,),
                Text(
                  list.availbility,
                  style: const TextStyle(
                      fontSize: 10,
                      fontFamily: ConstantsUtils.poppinsFamilyText),
                ),
              ],
            )
          ],
        );
  }

  Row rightTOPSection(NearbyStoresModel list) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  list.name,
                  style: const TextStyle(
                      fontFamily: ConstantsUtils.poppinsFamilyText,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    getTextItem(list.itemType),
                    getTextItem(", "),
                    getTextItem(
                      list.ethnicity,
                    ),
                  ],
                ),
                Row(
                  children: [
                    getTextItem(
                      list.location,
                    ),
                    getTextItem("  |  "),
                    getTextItem(list.kmAway),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.grey,
                  ),
                  child: Text(
                    list.topStore,
                    style: const TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      size: 15,
                    ),
                    getTextItem(list.customerStar),
                  ],
                ),
                getTextItem(list.deliveryTime, color: AppColors.orange),
              ],
            )
          ],
        );
  }

  ClipRRect leftImageSection(NearbyStoresModel list) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        list.image,
        height: 80,
        width: 80,
        fit: BoxFit.cover,
      ),
    );
  }

  Text getTextItem(String tag, {Color color = AppColors.grey}) => Text(tag,
      style: TextStyle(
          fontFamily: ConstantsUtils.poppinsFamilyText,
          color: color,
          fontSize: 13));
}
