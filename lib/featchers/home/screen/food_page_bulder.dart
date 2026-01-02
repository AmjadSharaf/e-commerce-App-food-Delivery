import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/core/helper/colors/appColor.dart';
import 'package:food_delivery_app/featchers/home/widget/DotsIndicator.dart';
import 'package:food_delivery_app/featchers/home/widget/bulder_page_small_wedget.dart';
import 'package:food_delivery_app/featchers/home/widget/page_transformer.dart';

class FoodPageBuilderWidget extends StatefulWidget {
  const FoodPageBuilderWidget({super.key});

  @override
  State<FoodPageBuilderWidget> createState() => _FoodPageBuilderWidgetState();
}

class _FoodPageBuilderWidgetState extends State<FoodPageBuilderWidget> {
  late PageController _pageController;
  double _currentPageValue = 0.0;

  final double _scaleFactor = 0.8;
  final double _containerHeight = 290.0;
  final double _itemHeight = 190.0;
  final int _itemCount = 5;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.85);
    _pageController.addListener(_onPageChanged);
  }

  void _onPageChanged() {
    if (_pageController.hasClients) {
      setState(() {
        _currentPageValue = _pageController.page ?? 0.0;
      });
    }
  }

  Widget _buildItem(int index) {
    final matrix = PageTransformer.calculateTransform(
      index: index,
      currentPage: _currentPageValue,
      scaleFactor: _scaleFactor,
      height: _itemHeight,
    );

    return Transform(
      transform: matrix,
      alignment: Alignment.center,
      child: Stack(children: [_buildBackground(), BulderPageIitemSmall()]),
    );
  }

  Widget _buildBackground() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      width: double.infinity,
      height: _itemHeight.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: Appcolor.mainColor,
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/4.jpg"),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.removeListener(_onPageChanged);
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: _containerHeight.h,
          child: PageView.builder(
            controller: _pageController,
            itemCount: _itemCount,
            itemBuilder: (context, index) => _buildItem(index),
          ),
        ),
        SizedBox(height: 5.h),
        DotsIndicatorslide(
          itemCount: _itemCount,
          currentPageValue: _currentPageValue,
        ),
      ],
    );
  }
}
