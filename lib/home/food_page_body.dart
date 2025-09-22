import 'package:flutter/material.dart';
import 'package:food_app/colors.dart';
import 'package:food_app/widget/bigtext.dart';
import 'package:food_app/widget/icon_page_home.dart';
import 'package:food_app/widget/small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      _currPageValue = pageController.page!;
      setState(() {
        _currPageValue = pageController.page!;
        print("corrent page value : " + _currPageValue.toString());
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      // color: Colors.amber,
      child: PageView.builder(
        controller: pageController,
        itemCount: 5,
        itemBuilder: (context, position) {
          return _buldPageItem(position);
        },
      ),
    );
  }

  Widget _buldPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: EdgeInsets.only(left: 5, right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            // color: index.isEven ? Colors.blue : Colors.amber,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/image/food.jpg"),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,

            margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Container(
              padding: EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Bigtext(text: "chines site "),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                          5,
                          (index) => Icon(
                            Icons.star,
                            color: AppColors.mainColor,
                            size: 15,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      SmallText(text: "4.5"),
                      SizedBox(width: 10),
                      SmallText(text: "1179"),
                      SizedBox(width: 10),
                      SmallText(text: "comints"),
                    ],
                  ),
                  SizedBox(height: 10),
                  IconPageHome(
                    text_icon1: "text",
                    text_icon2: "17.5",
                    text_icon3: "text2",
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
