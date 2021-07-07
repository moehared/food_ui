import 'package:flutter/material.dart';
import 'package:food_ui/colors/colors.dart';
import 'package:food_ui/widgets/square_btn.dart';
import '../model/cart.dart' as cart;

class CartItem extends StatelessWidget {
  CartItem({
    Key? key,
    required this.cartItem,
  }) : super(key: key);
  final cart.CartItem cartItem;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(21)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                  color: ColorPalette.containerBGK,
                  borderRadius: BorderRadius.all(
                    Radius.circular(32),
                  ),
                ),
                child: Image.asset(
                  'images/${cartItem.image}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // SizedBox(width: 15),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(cartItem.productName),
                  Text('\$${cartItem.price}'),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              // color: Colors.red,
              child: Row(
                children: [
                  Expanded(
                    child: SquareButton(iconData: Icons.remove),
                  ),
                  // SizedBox(width: 10),
                  Expanded(
                    child: Center(
                      child: Text('${cartItem.quantity}'),
                    ),
                  ),
                  // SizedBox(width: 10),
                  Expanded(
                    child: SquareButton(iconData: Icons.add),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
