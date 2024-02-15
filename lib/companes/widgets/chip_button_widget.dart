import 'package:flutter/material.dart';
import 'package:pizza/theme/app_textstyle.dart';

// ignore: must_be_immutable
class ChipButtonWidget extends StatelessWidget {
  ChipButtonWidget({
    super.key,
    required this.text,
  });
  final String text;
  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ActionChip(
          onPressed: () {
            favorite = !favorite;
          },
          label: Text(text),
          labelStyle: AppTextStyle.smallTextStyle,
          padding: const EdgeInsets.all(5),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: const BorderSide(color: Color(0xffd2d1d5), width: 3))),
    );
  }
}
