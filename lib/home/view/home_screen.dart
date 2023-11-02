import 'package:flutter/material.dart';
import 'package:flutter_task/home/view/bottom_nav_bar.dart';
import 'package:flutter_task/home/widgets/bannar.dart';
import 'package:flutter_task/home/widgets/categories_widget.dart';
import 'package:flutter_task/home/widgets/items.dart';
import 'package:flutter_task/home/widgets/personal_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      appBar: AppBar(
        title: const Text(
          'Home',
        ),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          PersonalData(),
          Padding(
            padding: EdgeInsets.only(
              top: 30.0,
              bottom: 3,
            ),
            child: Text(
              'Multi-Services for Your Real Estate Needs',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Text(
            'Explore diverse real estate services for all your needs: property management, construction, insurance and more in one place.',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
          BannerWidget(),
          Items(),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories View',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'see all',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          CategoriesWidget(),
        ]),
      ),bottomNavigationBar: const BottomNavBar(),
    );
  }
}
