import 'package:flutter/material.dart';
import 'package:food_ui/colors/colors.dart';

class CategoryItem extends StatelessWidget {
  final String? image;
  final String? id;
  final String? title;
  final isCategoryColor;

  CategoryItem({this.image, this.id, this.title, this.isCategoryColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
          color: isCategoryColor
              ? ColorPalette.CATEGORY_BG_COLOR
              : Colors.grey[300],
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Tab(
              icon: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(32)),
                child: Image.asset(
                  image!,
                  height: 40,
                  width: 40,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                title!,
                style: TextStyle(
                  color: isCategoryColor ? Colors.white : Colors.black,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
