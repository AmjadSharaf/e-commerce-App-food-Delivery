import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/core/helper/colors/appColor.dart';
import 'package:food_delivery_app/core/widgets/body_text.dart';

class IconsWedget extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  IconsWedget({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.circle_sharp, color: Appcolor.iconColor1),

            BodyText(text: text1, size: 10.sp),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.location_on, color: Appcolor.mainColor),

            BodyText(text: text2, size: 10.sp),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.access_time_rounded, color: Appcolor.iconColor2),

            BodyText(text: text3, size: 10.sp),
          ],
        ),
      ],
    );
  }
}
