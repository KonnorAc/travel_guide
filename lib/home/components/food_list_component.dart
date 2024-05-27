import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travelguide/home/components/food_list_item_component.dart';

class FoodListComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.only(right: 20, left: 20),
        shrinkWrap: true,
        clipBehavior: Clip.none,
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 25,
          mainAxisSpacing: 25,
          childAspectRatio: 3 / 3.75,
        ),
        itemBuilder: (context, index) {
          return FoodListItemComponent(
            index: index, foodNames: ["Topkapi","Zorlu Center","Dolmabahce","Aya-Sofia Mosque","Blue Mosque","Camlica Mosque","Ortakoy Mosque"],ratings: [4.8,5.0,4.9,4.5,4.4,4.1,4.2,5],         );
        });
  }
}
