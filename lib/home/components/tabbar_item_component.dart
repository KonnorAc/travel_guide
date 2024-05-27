import 'package:flutter/material.dart';

class TabbarItemComponent extends StatelessWidget {
  final Map<String, dynamic> item;

  const TabbarItemComponent({
    required Key key,
    required this.item,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20, left: 20),
      margin: EdgeInsets.only(right: 25),
      decoration: BoxDecoration(
          color:
              item['active'] ? Color.fromARGB(255, 54, 209, 239) : Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF000000).withOpacity(0.05),
              blurRadius: 30,
              offset: Offset(1, 0),
            ),
          ]),
      child: Row(
        children: [
          Icon(
            item['icon'],
            color: item['active'] ? Colors.white : Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            item['label'],
            style: TextStyle(
              color: item['active'] ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
