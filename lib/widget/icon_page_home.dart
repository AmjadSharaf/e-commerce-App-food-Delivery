// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:food_app/colors.dart';

import 'package:food_app/widget/small_text.dart';

// ignore: must_be_immutable
class IconPageHome extends StatelessWidget {
  String text_icon1;
  String text_icon2;
  String text_icon3;
  IconPageHome({
    Key? key,
    required this.text_icon1,
    required this.text_icon2,
    required this.text_icon3,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Icon(Icons.circle_sharp, color: AppColors.iconColor2),
            SizedBox(width: 10),
            SmallText(text: text_icon1),
          ],
        ),
        SizedBox(width: 70),
        Row(
          children: [
            Icon(Icons.location_on, color: AppColors.mainColor),
            SizedBox(width: 10),
            SmallText(text: text_icon2),
          ],
        ),
        SizedBox(width: 70),
        Row(
          children: [
            Icon(Icons.access_time, color: AppColors.iconColor2),
            SizedBox(width: 10),
            SmallText(text: text_icon3),
          ],
        ),
      ],
    );
  }
}
