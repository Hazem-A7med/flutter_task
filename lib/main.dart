import 'package:flutter/material.dart';
import 'package:flutter_task/bottom_nav_bar/view/bottom_nav_bar.dart';
import 'package:flutter_task/home/controller/home_provider.dart';
import 'package:flutter_task/home/view/home_screen.dart';
import 'package:provider/provider.dart';

import 'home/controller/categories_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => HomeProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => CategoriesProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const BottomNavBar(),
    );
  }
}
