import 'package:flutter/material.dart';
import 'package:food_ui/colors/colors.dart';
import 'package:food_ui/model/cart.dart'
    show cartList, deliveryCharge, discount, subTotal, total;
import 'package:food_ui/widgets/cart_item.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = '/CartScreen';
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'My\nCart List',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemBuilder: (ctx, i) {
                  return CartItem(cartItem: cartList[i]);
                },
                itemCount: cartList.length,
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 0,
              margin: EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Icon(
                        Icons.design_services_outlined,
                        color: ColorPalette.ICON_COLOR_BG,
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Do you have an discount code?',
                      textAlign: TextAlign.end,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Card(
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RowItems(
                        amount: subTotal.toStringAsFixed(2),
                        label: 'subTotal',
                      ),
                      RowItems(
                        amount: discount.toStringAsFixed(2),
                        label: 'Discount',
                      ),
                      RowItems(
                        amount: '${deliveryCharge.toStringAsFixed(2)}',
                        label: 'Delivery',
                      ),
                      DashLine(),
                      RowItems(
                        amount: total.toStringAsFixed(2),
                        label: 'Total',
                      ),
                      SizedBox(height: 20),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(20),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: ColorPalette.containerBGK,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Check out',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 15),
                              Icon(
                                Icons.arrow_right,
                                color: ColorPalette.ICON_COLOR_BG,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RowItems extends StatelessWidget {
  const RowItems({
    Key? key,
    required this.amount,
    required this.label,
  }) : super(key: key);
  final String label;
  final String amount;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Text(
            '\$$amount',
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class DashLine extends StatelessWidget {
  const DashLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: List.generate(
          (600 / 10).truncate().toInt(),
          (index) => Expanded(
            child: Container(
              color: index % 2 == 0 ? Colors.transparent : Colors.grey,
              height: 2,
            ),
          ),
        ),
      ),
    );
  }
}
