import 'package:flutter/material.dart';

import '../../../../../config/utils/colors.dart';
import '../../../../../config/utils/constants.dart';

class HomePageAppBarWidget extends StatelessWidget {
  const HomePageAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.location_pin,
          color: AppColors.green,
        ),
        const Text(
          ConstantsUtils.homeAppbarText,
          style: TextStyle(fontSize: 15),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_drop_down_outlined,
              color: AppColors.green,
            )),
      ],
    );
  }
}
