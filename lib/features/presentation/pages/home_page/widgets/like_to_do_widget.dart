import 'package:flutter/material.dart';

import '../../../../../config/utils/colors.dart';
import '../../../../../config/utils/constants.dart';
import '../../../../data/models/today_likes.dart';
import '../../../widgets/home_title_widget.dart';

class LikeToDoWidget extends StatelessWidget {
  const LikeToDoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        const HomeTitleWidget(title:ConstantsUtils.likeToDoText,),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
        //  color: Colors.red,
          height: 230,
            width: double.infinity,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing:5,
                mainAxisSpacing: 6,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) {
                return LikeToDoWidgetItem(index: index);
              },
              itemCount: likeTodoList.length,
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("More",style: TextStyle(color: AppColors.green),),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.keyboard_arrow_down_outlined,color: AppColors.green,)),
          ],
        ),
      ],
    );
  }
}

class LikeToDoWidgetItem extends StatelessWidget {
  const LikeToDoWidgetItem({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 70,
          width: 70,
          margin: EdgeInsets.only(top: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(0, 0.1),
                blurStyle: BlurStyle.normal,
              )
            ],
          ),
          child: Stack(
            children: [
              getOfferText(index),
              getImage(index),
            ],
          ),
        ),
        Text(
          likeTodoList[index].title,
          textAlign: TextAlign.center,
          overflow: TextOverflow.clip,
          maxLines: 2,
        ),
      ],
    );
  }

  Align getImage(int index) {
    return Align(
      alignment: Alignment.center,
      child: ClipRRect(
          child: Image.asset(
        likeTodoList[index].icon,
        height: 35,
        width: 35,
      )),
    );
  }

  Widget getOfferText(int index) {
    return likeTodoList[index].offer != ""
        ? Align(
            alignment: Alignment.topRight,
            child: Container(
                padding: const EdgeInsets.only(left: 5, right: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.purple,
                ),
                child: Text(
                  likeTodoList[index].offer,
                  style: const TextStyle(color: Colors.white, fontSize: 10),
                )),
          )
        : Container();
  }
}
