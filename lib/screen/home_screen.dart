import 'package:flutter/material.dart';
import 'package:food_ui/colors/colors.dart';

import 'package:food_ui/dummy_data/data_source.dart';
import 'package:food_ui/screen/cart_screen.dart';
import 'package:food_ui/widgets/categories_items.dart';
import 'package:food_ui/widgets/food_item.dart';
import 'package:food_ui/widgets/place_item.dart';
import 'package:food_ui/widgets/search_bar.dart';
import 'package:food_ui/widgets/text_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: const EdgeInsets.only(left: 20, top: 30),
                    child: TextWidget(
                      label: 'Hello Moe',
                      isBold: true,
                      fontSize: 18.0,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        CartScreen.routeName,
                      );
                    },
                    icon: Icon(
                      Icons.shopping_cart,
                      color: ColorPalette.CATEGORY_BG_COLOR,
                    ),
                  )
                ],
              ),

              const Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextWidget(
                  label: 'Welcome back!',
                  isBold: true,
                  fontSize: 24.0,
                ),
              ),
              const SearchBarWidget(),
              const Categories(),
              const SizedBox(height: 20),
              const Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextWidget(
                  label: 'Favourite Foods',
                  isBold: false,
                  fontSize: 20.0,
                ),
              ),

              Container(
                width: double.infinity,
                height: 200,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, i) {
                    return FoodItem(
                      id: '${FOOD_DATA[i]["id"]}',
                      image: FOOD_DATA[i]["image"] as String,
                      price: '${FOOD_DATA[i]["price"]}',
                      productName: '${FOOD_DATA[i]["name"]}',
                      rating: FOOD_DATA[i]["rating"] as double,
                    );
                  },
                  itemCount: FOOD_DATA.length,
                ),
              ),
              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextWidget(
                      label: 'More resturants',
                      isBold: false,
                      fontSize: 22.0,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: TextWidget(
                      label: 'see all',
                      isBold: false,
                      fontSize: 20.0,
                    ),
                  )
                ],
              ),
              // ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  padding: EdgeInsets.all(15),
                  width: double.infinity,
                  height: 150,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (ctx, i) => PlaceItem(place: places[i]),
                    itemCount: places.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
