import 'package:flutter/material.dart';
import 'package:travelguide/home/components/bottom_nav_bar.dart';

import 'package:travelguide/home/components/tabbar_component.dart';

import 'components/swiper_component.dart';

import 'components/food_list_component.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SwiperComponent(),
            TabbarComponent(),
            SizedBox(height: 25),
            FoodListComponent(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(key: UniqueKey()),
    );
  }
}
