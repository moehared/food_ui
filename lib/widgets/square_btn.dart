import 'package:flutter/material.dart';
import 'package:food_ui/colors/colors.dart';

class SquareButton extends StatelessWidget {
  const SquareButton({
    Key? key,
    required this.iconData,
    this.isRoundedBTN = false,
  }) : super(key: key);
  final IconData iconData;
  final bool isRoundedBTN;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0,
      fillColor: ColorPalette.ICON_COLOR_BG,
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(isRoundedBTN ? 32 : 1),
      ),
      child: Icon(
        iconData,
        color: Colors.white,
      ),
      constraints: BoxConstraints(minWidth: 30, minHeight: 30),
    );
  }
}
