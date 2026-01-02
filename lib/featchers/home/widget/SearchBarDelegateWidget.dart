// import 'package:flutter/material.dart';
// import 'package:food_delivery_app/core/helper/colors/appColor.dart';
// import 'package:food_delivery_app/core/widgets/title_text.dart';

// class SearchBarDelegate extends SliverPersistentHeaderDelegate {
//   @override
//   Widget build(
//     BuildContext context,
//     double shrinkOffset,
//     bool overlapsContent,
//   ) {
//     return Container(
//       color: Appcolor.backgroundColor,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//         child: TextField(
//           decoration: InputDecoration(
//             hintText: TitleText(text: "Search food...", size: 16).text,
//             prefixIcon: Icon(Icons.search),
//             filled: true,
//             fillColor: Colors.grey[100],
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(20),
//               borderSide: BorderSide.none,
//             ),
//             contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   // TODO: implement maxExtent
//   double get maxExtent => throw UnimplementedError();

//   @override
//   // TODO: implement minExtent
//   double get minExtent => throw UnimplementedError();

//   @override
//   bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
//     // TODO: implement shouldRebuild
//     throw UnimplementedError();
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:food_delivery_app/core/helper/colors/appColor.dart';
// import 'package:food_delivery_app/core/widgets/title_text.dart';

// class Searchbardelegate extends StatelessWidget {
//   const Searchbardelegate({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Appcolor.backgroundColor,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//         child: TextField(
//           decoration: InputDecoration(
//             hintText: TitleText(text: "Search food...", size: 16).text,
//             prefixIcon: Icon(Icons.search),
//             filled: true,
//             fillColor: Colors.grey[100],
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(20),
//               borderSide: BorderSide.none,
//             ),
//             contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
//           ),
//         ),
//       ),
//     );
//   }
// }
