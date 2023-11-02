import 'package:flutter/material.dart';
import 'package:flutter_task/home/controller/homeprovider.dart';
import 'package:flutter_task/home/view/widgets/red_button.dart';
import 'package:provider/provider.dart';

import 'categories_widget.dart';

class Items extends StatefulWidget {
  const Items({Key? key}) : super(key: key);

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {


  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (BuildContext context, provider,_) =>Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Container(padding: const EdgeInsets.all(10),
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
                    provider.changeItemsIndex(0);
                  });
                },
                text: 'Categories',fontSize: 14,
                height: 35,
                width: 100,
                color: (provider.itemsIndex == 0) ? null : Colors.grey.withOpacity(.3),
                textColor: (provider.itemsIndex == 0) ? null : Colors.black,
              ),
              RedButton(
                onTab: () {
                  setState(() {
                    provider.changeItemsIndex(1);
                  });

                },
                text: 'Services',fontSize: 14,
                height: 35,
                width: 100,
                color: (provider.itemsIndex == 1) ? null : Colors.grey.withOpacity(.3),
                textColor: (provider.itemsIndex == 1) ? null : Colors.black,
              ),
              RedButton(
                onTab: () {setState(() {
                  provider.changeItemsIndex(2);
                });

                },
                text: 'Orders (0)',fontSize: 14,
                height: 35,
                width: 85,
                color: (provider.itemsIndex == 2) ? null : Colors.grey.withOpacity(.3),
                textColor: (provider.itemsIndex == 2) ? null : Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
