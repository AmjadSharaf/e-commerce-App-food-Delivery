import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/featchers/home/wigdget/bulder_page_small_wedget.dart';

Widget bulderPageItem(int index) {
  return Stack(
    children: [
      Container(
        margin: EdgeInsets.only(right: 10, left: 10),
        width: double.infinity,
        height: 190.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xff69c5df),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/4.jpg"),
          ),
        ),
      ),
      BulderPageIitemSmall(),
    ],
  );
}
