import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SmallText extends StatelessWidget {
  SmallText(
      {super.key,
      this.color = const Color(0xffccc7c5),
      this.size = 12,
      this.height = 1.2,
      required this.text});
  Color? color;
  final String text;
  double size;
  double height;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color, fontFamily: 'Urbanist', fontSize: size, height: height),
    );
  }
}
