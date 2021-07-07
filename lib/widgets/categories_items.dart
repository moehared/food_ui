import 'package:flutter/material.dart';
import 'package:food_ui/dummy_data/data_source.dart';

import 'category_item.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: ListView.builder(
          itemCount: categoryLIST.length,
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, i) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: CategoryItem(
              isCategoryColor: categoryLIST[i].isSelected,
              image: categoryLIST[i].image,
              title: categoryLIST[i].title,
            ),
          ),
        ),
      ),
    );
  }
}
