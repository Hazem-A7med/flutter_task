import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier {
  int itemsIndex = 0;

  changeItemsIndex(int index) {
    itemsIndex = index;
    notifyListeners();
  }
}
