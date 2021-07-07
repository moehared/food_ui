import 'package:flutter/material.dart';
import 'package:food_ui/colors/colors.dart';
import 'package:food_ui/screen/details_screen.dart';

import 'build_star.dart';

class FoodItem extends StatelessWidget {
  const FoodItem({
    required this.id,
    required this.image,
    required this.price,
    required this.productName,
    required this.rating,
  });
  final String productName;
  final String price;
  final String id;
  final String image;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(DetailsScreen.routeName, arguments: id);
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: ColorPalette.containerBGK,
          borderRadius: const BorderRadius.all(Radius.circular(32)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 3,
              child: Image.asset('images/$image'),
            ),
            Text(
              productName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BuildStar(
                    rating: rating,
                  ),
                  SizedBox(width: 10),
                  Text(
                    '\$$price',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
