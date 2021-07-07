import 'package:flutter/material.dart';
import 'package:food_ui/colors/colors.dart';

class BuildStar extends StatelessWidget {
  const BuildStar({Key? key, required this.rating}) : super(key: key);
  final double rating;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        5,
        (index) {
          if (index >= rating) {
            return Icon(
              Icons.star_border,
              color: ColorPalette.CATEGORY_BG_COLOR,
            );
          } else if (index > rating - 1 && index < rating) {
            return Icon(
              Icons.star_half,
              color: ColorPalette.CATEGORY_BG_COLOR,
            );
          } else {
            return Icon(
              Icons.star,
              color: ColorPalette.CATEGORY_BG_COLOR,
            );
          }
        },
      ),
    );
  }
}
