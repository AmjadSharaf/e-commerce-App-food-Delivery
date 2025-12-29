// import 'dart:ffi';

// import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/helper/colors/appColor.dart';
import 'package:food_delivery_app/featchers/home/screen/main_food_page.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:food_delivery_app/generated/locale_keys.g.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int _currentIndex = 0;
  final List<Widget> _screen = [
    MainFoodPage(),
    MainFoodPage(),
    MainFoodPage(),
    MainFoodPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Appcolor.mainColor,
        unselectedItemColor: Appcolor.cartIconColor,
        elevation: 0,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.archive), label: 'Archive'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      // body: Center(
      // child: Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      //
      // children: [
      // Text(LocaleKeys.hello.tr()),
      // Text(LocaleKeys.name.tr()),

      // Container(
      // height: 50,
      // width: 50,
      // child: InkWell(
      // onTap: () async {
      //   if (context.locale.languageCode == 'en') {
      //     await context.setLocale(Locale('ar'));
      //   } else {
      //     await context.setLocale(Locale('en'));
      //   }
      // },
      // ),
      // ],
      // ),
      // ),
    );
  }
}








// flutter pub run easy_localization:generate -S assets/translations -O lib/generated 
