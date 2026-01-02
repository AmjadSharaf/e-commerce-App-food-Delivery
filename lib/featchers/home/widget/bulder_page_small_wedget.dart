import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/core/helper/colors/appColor.dart';
import 'package:food_delivery_app/core/widgets/body_text.dart';
import 'package:food_delivery_app/core/widgets/title_text.dart';
import 'package:food_delivery_app/featchers/home/widget/icons_wedget.dart';

class BulderPageIitemSmall extends StatelessWidget {
  const BulderPageIitemSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 120.h,
          margin: EdgeInsets.only(left: 40.w, right: 40.w, bottom: 10.h),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Appcolor.lineColor,
                blurRadius: 5.0,
                offset: Offset(0, 5),
              ),
              BoxShadow(color: Appcolor.white, offset: Offset(-5, 0)),
              BoxShadow(color: Appcolor.white, offset: Offset(5, 0)),
            ],
            borderRadius: BorderRadius.circular(20),
            color: Appcolor.white,
          ),
          child: Container(
            padding: EdgeInsets.only(top: 15, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleText(text: "Hello world.."),
                SizedBox(height: 10),
                Row(
                  children: [
                    Wrap(
                      children: List.generate(
                        5,
                        (index) => Icon(
                          Icons.star,
                          size: 15,
                          color: Appcolor.mainColor,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    BodyText(text: "4.5"),
                    SizedBox(width: 10),
                    BodyText(text: "12345"),
                    SizedBox(width: 10),
                    BodyText(text: "comments"),
                  ],
                ),
                SizedBox(height: 10),

                IconsWedget(
                  text1: "Nourmall",
                  text2: "1.7 km",
                  text3: "32 min",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
