import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/core/widgets/body_text.dart';
import 'package:food_delivery_app/core/widgets/title_text.dart';

class PopularText extends StatelessWidget {
  const PopularText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.h, bottom: 10.h, left: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TitleText(text: "Popular", fontWeight: FontWeight.w600),
          SizedBox(width: 10.w),
          SizedBox(
            child: TitleText(text: ".", color: Colors.black),
          ),
          SizedBox(width: 10.w),
          BodyText(text: "food paring"),
          

        ],
      ),
    );
  }
}
