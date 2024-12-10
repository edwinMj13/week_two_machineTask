
import 'package:flutter/material.dart';

import '../../../config/utils/constants.dart';

class HomeTitleWidget extends StatelessWidget {
  const HomeTitleWidget({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          fontFamily: ConstantsUtils.poppinsFamilyText,
          fontWeight: FontWeight.bold,
          fontSize: 19),
    );
  }
}
