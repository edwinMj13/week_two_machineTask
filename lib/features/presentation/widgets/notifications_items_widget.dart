import 'package:flutter/material.dart';
import 'package:week_two_machine_task/config/utils/constants.dart';
import 'package:week_two_machine_task/features/data/models/PagignationModel.dart';

import '../../../config/utils/colors.dart';
import '../../data/models/notification_data_model.dart';

class NotificationItemsWidget extends StatelessWidget {
  const NotificationItemsWidget({
    super.key,
    required this.dataList,
    required this.index,
  });

  final List<Data> dataList;
  //final List<Products> dataList;
  final int index;
  /*@override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              dataList[index].thumbnail!,
              width: 30,
              height: 30,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dataList[index].title!,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: ConstantsUtils.poppinsFamilyText),
                ),
                Text(
                  dataList[index].price!.toString(),
                  style: const TextStyle(
                      color: AppColors.grey, fontFamily: ConstantsUtils.poppinsFamilyText),
                ),
                //Text(state.model.data![index].body!),
              ],
            ),
          )
        ],
      ),
    );
  }
  */

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              getImage(dataList, index),
              width: 30,
              height: 30,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dataList[index].title!,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: ConstantsUtils.poppinsFamilyText),
                ),
                Text(
                  dataList[index].body!,
                  style: const TextStyle(
                      color: AppColors.grey, fontFamily: ConstantsUtils.poppinsFamilyText),
                ),
                //Text(state.model.data![index].body!),
              ],
            ),
          )
        ],
      ),
    );
  }

  String getImage(List<Data> model, int index) {
    final data = model[index].image;
    int dotIndex = data!.indexOf('.');
    final checkString = data.substring(0, dotIndex);
    if (checkString == "order_assigned") {
      return "assets/order_status/order_assigned.png";
    } else if (checkString == "order_cancelled") {
      return "assets/order_status/order_cancelled.png";
    } else if (checkString == "order_delivered") {
      return "assets/order_status/order_delivered.png";
    } else if (checkString == "order_unavailable") {
      return "assets/order_status/order_unavailable.png";
    } else if (checkString == "promotion_marketplace") {
      return "assets/order_status/promotion_marketplace.png";
    } else if (checkString == "promotion_notify") {
      return "assets/order_status/promotion_notify.png";
    } else if (checkString == "support_personnel") {
//else if(checkString == "support_personnel"){
      return "assets/order_status/support_personnel.png";
    } else {
      return "";
    }
  }

}
