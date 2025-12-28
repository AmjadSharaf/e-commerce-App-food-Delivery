import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TitleText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontWeight;
  final Color color;
  TextOverflow overflow;
  TitleText({
    super.key,
    required this.text,
    this.size = 20,
    this.color = const Color(0xFF332d2b),
    this.fontWeight = FontWeight.w400,
    this.overflow = TextOverflow.ellipsis,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      maxLines: 1,
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: size,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
