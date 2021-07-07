import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String? label;
  final double? fontSize;
  final bool? isBold;
  final String? subTitle;

  const TextWidget({this.label, this.fontSize, this.isBold, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Text(
      label!,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: !isBold! ? FontWeight.normal : FontWeight.bold,
      ),
    );
  }
}
