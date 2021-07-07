import 'package:flutter/material.dart';

import 'package:food_ui/screen/cart_screen.dart';
import 'package:food_ui/screen/details_screen.dart';
import 'package:food_ui/screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          brightness: Brightness.dark,
        ),
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      routes: {
        DetailsScreen.routeName: (ctx) => DetailsScreen(),
        CartScreen.routeName: (ctx) => CartScreen(),
      },
    );
  }
}
