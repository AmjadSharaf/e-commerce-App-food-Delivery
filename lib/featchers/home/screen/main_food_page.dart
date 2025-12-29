import 'package:flutter/material.dart';
import 'package:food_delivery_app/featchers/home/screen/food_page_bulder.dart';
import 'package:food_delivery_app/featchers/home/wigdget/appbar_home_widget.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [Appbarhomewidget(), FoodPageBuilderWidget()],
    );
  }
}
