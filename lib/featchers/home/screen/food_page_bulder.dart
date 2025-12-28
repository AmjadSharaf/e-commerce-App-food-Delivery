import 'package:flutter/material.dart';
import 'package:food_delivery_app/featchers/home/wigdget/bulder_page_item.dart';

class FoodPageBulderWidget extends StatefulWidget {
  const FoodPageBulderWidget({super.key});

  @override
  State<FoodPageBulderWidget> createState() => _FoodPageBulderWidgetState();
}

class _FoodPageBulderWidgetState extends State<FoodPageBulderWidget> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,

      child: PageView.builder(
        controller: pageController,
        itemCount: 5,
        itemBuilder: (context, index) {
          return bulderPageItem(index);
        },
      ),
    );
  }
}
