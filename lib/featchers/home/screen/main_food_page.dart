import 'package:flutter/material.dart';

import 'package:food_delivery_app/featchers/home/screen/food_page_bulder.dart';
import 'package:food_delivery_app/featchers/home/wigdget/appbar_home_widget.dart';
import 'package:food_delivery_app/featchers/home/wigdget/PopularText.dart';

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
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Appbarhomewidget(),
        Expanded(
          child: SingleChildScrollView(
            physics: RangeMaintainingScrollPhysics(),
            child: Column(
              children: [
                FoodPageBuilderWidget(),
                PopularText(),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsetsDirectional.only(start: 30, end: 30),
                  // height: 900,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsetsDirectional.only(start: 30, end: 30),
                        child: Container(
                          child: Image.asset("assets/images/4.jpg"),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
