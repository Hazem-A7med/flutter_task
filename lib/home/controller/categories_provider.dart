import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:http/http.dart'as http;
import 'package:flutter_task/home/models/categories_model.dart';

class CategoriesProvider extends ChangeNotifier{
  List<CategoriesModel> _categories = [];

  List<CategoriesModel> get categories => _categories;
 bool loadedData=false;

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      loadedData=true;
      final List<dynamic> data = json.decode(response.body);
      final List<CategoriesModel> categoriesList = data
          .map((item) => CategoriesModel.fromJson(item))
          .toList();

      _categories = categoriesList;
      notifyListeners();
    } else {
      throw Exception('Failed to load data');
    }
  }


}