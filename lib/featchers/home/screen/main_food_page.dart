import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/helper/colors/appColor.dart';
import 'package:food_delivery_app/core/widgets/body_text.dart';
import 'package:food_delivery_app/core/widgets/title_text.dart';
import 'package:food_delivery_app/featchers/home/screen/food_page_bulder.dart';
import 'package:food_delivery_app/featchers/home/widget/PopularText.dart';
import 'package:food_delivery_app/featchers/home/widget/appbar_home_widget.dart';
import 'package:food_delivery_app/featchers/home/widget/icons_wedget.dart';

class MainFoodPage extends StatefulWidget {
  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Appbarhomewidget(),

        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverPersistentHeader(
                pinned: true,
                delegate: _SearchBarDelegate(),
              ),
              SliverToBoxAdapter(child: FoodPageBuilderWidget()),
              SliverToBoxAdapter(child: PopularText()),
              SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return Container(
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 10,
                      bottom: 10,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Appcolor.backgroundColor,
                          ),
                          child: Image.asset(
                            fit: BoxFit.cover,
                            "assets/images/4.jpg",
                          ),
                        ),
                        Expanded(
                          child: Container(
                            // width: 200,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: Appcolor.white,
                            ),
                            child: Padding(
                              padding: EdgeInsetsGeometry.only(
                                left: 10,
                                right: 10,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TitleText(
                                    text:
                                        "text text text text texttexttext text texttexttext",
                                    size: 16,
                                  ),
                                  BodyText(
                                    text: "Lorem ipsum dolor sit amet, consec",
                                    size: 12,
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
                      ],
                    ),
                  );
                }, childCount: 30),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// كلاس خاص لشريط البحث (SliverPersistentHeaderDelegate)
class _SearchBarDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Appcolor.backgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: TitleText(text: "Search food...", size: 16).text,
            prefixIcon: Icon(Icons.search),
            filled: true,
            fillColor: Colors.grey[100],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          ),
        ),
      ),
    );
  }

  @override
  double get maxExtent => 60; // أقصى ارتفاع

  @override
  double get minExtent => 60; // أقل ارتفاع (نفس القيمة ليبقى ثابتاً)

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
