import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelguide/home/components/tabbar_item_component.dart';

class TabbarComponent extends StatelessWidget {
  final itemList = [
    {
      'label': 'Places',
      'icon': CupertinoIcons.house,
      'active': true,
    },
    {
      'label': 'Tickets',
      'icon': CupertinoIcons.ticket,
      'active': false,
    },
    {
      'label': 'Book',
      'icon': CupertinoIcons.book,
      'active': false,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25, right: 25),
      height: 50,
      child: ListView(
        shrinkWrap: true,
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        children: itemList
            .map((tabItem) =>
                TabbarItemComponent(item: tabItem, key: UniqueKey()))
            .toList(),
      ),
    );
  }
}
