
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/helper/colors/appColor.dart';

class DotsIndicatorslide extends StatelessWidget {
  const DotsIndicatorslide({
    super.key,
    required int itemCount,
    required double currentPageValue,
  }) : _itemCount = itemCount, _currentPageValue = currentPageValue;

  final int _itemCount;
  final double _currentPageValue;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: _itemCount,
      position: _currentPageValue,
      decorator: DotsDecorator(
        activeColor: Appcolor.mainColor,
    
        color: Appcolor.cartIconColor,
        size: const Size.square(9.0),
        activeSize: const Size(18.0, 9.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}
