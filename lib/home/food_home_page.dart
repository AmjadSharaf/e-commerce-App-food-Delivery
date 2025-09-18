import 'package:flutter/material.dart';
import 'package:food_app/colors.dart';
import 'package:food_app/widget/bigtext.dart';
import 'package:food_app/widget/small_text.dart';

class FoodHomePage extends StatefulWidget {
  const FoodHomePage({super.key});

  @override
  State<FoodHomePage> createState() => _FoodHomePageState();
}

class _FoodHomePageState extends State<FoodHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 25, bottom: 10),
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Bigtext(text: "Damacsus", color: AppColors.mainColor),
                  Row(
                    children: [
                      SmallText(text: "City"),
                      Icon(Icons.arrow_drop_down_circle_rounded),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    child: Icon(Icons.search),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.mainColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
