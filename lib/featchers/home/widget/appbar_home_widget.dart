
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/core/helper/colors/appColor.dart';
import 'package:food_delivery_app/core/widgets/body_text.dart';
import 'package:food_delivery_app/core/widgets/title_text.dart';
import 'package:food_delivery_app/generated/locale_keys.g.dart';

class Appbarhomewidget extends StatelessWidget {
  const Appbarhomewidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.only(top: 45.h, bottom: 15.h),
        padding: EdgeInsets.only(left: 20.w, right: 20.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                TitleText(
                  text: LocaleKeys.hello.tr(),
                  color: Appcolor.mainColor,
                  size: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
                Row(
                  children: [
                    BodyText(
                      text: LocaleKeys.hello.tr(),
                      size: 16.sp,
                      color: Colors.black54,
                    ),
                    Icon(
                      Icons.arrow_drop_down_rounded,
                      color: Colors.black54,
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: 45.r,
              height: 45.r,
              child: Icon(Icons.search, color: Colors.white, size: 25.r),
              decoration: BoxDecoration(
                color: Appcolor.mainColor,
                borderRadius: BorderRadius.circular(15.r),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
