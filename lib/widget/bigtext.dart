// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class Bigtext extends StatelessWidget {
  String text;
  final Color color;
  double size;
  TextOverflow overflow;
  Bigtext({
    Key? key,
    required this.text,
    this.color = const Color(0xFF332d2d),
    this.size = 20,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.w400,
      ),
      overflow: overflow,
    );
  }
}
