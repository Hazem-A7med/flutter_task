import 'package:flutter/material.dart';
import 'package:flutter_task/home/widgets/bannar.dart';
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
      appBar: AppBar(
        title: const Text(
          'Home',
        ),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(children: [
          PersonalData(),
          Padding(
            padding: EdgeInsets.only(
              top: 30.0,
              bottom: 3,
            ),
            child: Text(
              'Multi-Services for Your Real Estate Needs',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          Text(
            'Explore diverse real estate services for all your needs: property management, construction, insurance and more in one place.',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
          ),
          BannerWidget(),
        ]),
      ),
    );
  }
}
