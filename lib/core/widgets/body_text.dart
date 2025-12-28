import 'package:flutter/material.dart';


class BodyText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontWeight;
  final Color color;
  final height;

  BodyText({
    super.key,
    required this.text,
    this.size = 14,
    this.color = const Color(0xFFccc7c5),
    this.fontWeight = FontWeight.w400,
    this.height = 1.2,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,

      style: TextStyle(
        height: height,
        fontFamily: 'Roboto',
        fontSize: size,
        color: color,
      ),
    );
  }
}
