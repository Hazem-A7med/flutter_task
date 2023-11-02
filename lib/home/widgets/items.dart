import 'package:flutter/material.dart';
import 'package:flutter_task/home/widgets/red_button.dart';

import 'categories_widget.dart';

class Items extends StatefulWidget {
  const Items({Key? key}) : super(key: key);

  @override
  State<Items> createState() => _ItemsState();
}

enum MyItems {
  categories,
  services,
  orders,
}

class _ItemsState extends State<Items> {
  int itemTypeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.withOpacity(.3), width: 1),
        ),
        height: 55,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RedButton(
              onTab: () {
                setState(() {
                  MyItems.categories;
                  itemTypeIndex = 0;
                });
              },
              text: 'Categories',
              height: 35,
              width: 100,
              color: (itemTypeIndex == 0) ? null : Colors.grey.withOpacity(.3),
              textColor: (itemTypeIndex == 0) ? null : Colors.black,
            ),
            RedButton(
              onTab: () {
                setState(() {
                  MyItems.services;
                  itemTypeIndex = 1;
                });
              },
              text: 'Services',
              height: 35,
              width: 100,
              color: (itemTypeIndex == 1) ? null : Colors.grey.withOpacity(.3),
              textColor: (itemTypeIndex == 1) ? null : Colors.black,
            ),
            RedButton(
              onTab: () {
                setState(() {
                  MyItems.orders;
                  itemTypeIndex = 2;
                });
              },
              text: 'Orders (0)',
              height: 35,
              width: 100,
              color: (itemTypeIndex == 2) ? null : Colors.grey.withOpacity(.3),
              textColor: (itemTypeIndex == 2) ? null : Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
