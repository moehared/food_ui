import 'package:flutter/material.dart';
import 'package:food_ui/colors/colors.dart';
import 'package:food_ui/widgets/square_btn.dart';

class ToppingItem extends StatelessWidget {
  const ToppingItem({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: ColorPalette.CATEGORY_TOPPING_DARK_BG,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Image.asset(
            'images/$image',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: -10,
          top: -10,
          child: SquareButton(
            iconData: Icons.add,
            isRoundedBTN: true,
          ),
        )
      ],
    );
  }
}
