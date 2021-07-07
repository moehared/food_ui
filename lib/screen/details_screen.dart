import 'package:flutter/material.dart';
import 'package:food_ui/colors/colors.dart';
import 'package:food_ui/dummy_data/data_source.dart';
import 'package:food_ui/widgets/square_btn.dart';

import 'package:food_ui/widgets/topping_item.dart';

class DetailsScreen extends StatelessWidget {
  static const routeName = '/DetailsScreen';
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)!.settings.arguments as String;
    final item = FOOD_DATA.firstWhere((element) => element["id"] == id);
    final List<String> toppings = item["topping"] as List<String>;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.dark,
        backgroundColor: ColorPalette.containerBGK,
        title: Text('meal details'),
      ),
      body: Container(
        color: ColorPalette.containerBGK,
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Image.asset(
                  'images/${item["image"]}',
                  width: double.infinity,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Card(
                elevation: 0,
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32.0),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            decoration: BoxDecoration(
                              color: ColorPalette.containerBGK,
                              borderRadius: BorderRadius.all(
                                Radius.circular(32),
                              ),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: ColorPalette.CATEGORY_BG_COLOR,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  '${item["rating"]}',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SquareButton(iconData: Icons.remove),
                              SizedBox(width: 10),
                              Text('2'),
                              SizedBox(width: 10),
                              SquareButton(iconData: Icons.add),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        item['name'].toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Add topping',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 15),
                      Expanded(
                        flex: 2,
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (ctx, i) {
                            return ToppingItem(image: toppings[i]);
                          },
                          itemCount: toppings.length,
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: ColorPalette.CATEGORY_TOPPING_DARK_BG,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Total price',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    '\$${item["price"]}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            flex: 2,
                            child: ElevatedButton.icon(
                              icon: Icon(
                                Icons.shopping_cart,
                                color: ColorPalette.ICON_COLOR_BG,
                              ),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(20),
                                primary: ColorPalette.containerBGK,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {},
                              label: Text(
                                'Go To Cart',
                                style: TextStyle(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
