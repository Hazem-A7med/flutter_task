import 'package:flutter/material.dart';
import 'package:flutter_task/home/controller/categories_provider.dart';
import 'package:flutter_task/home/controller/home_provider.dart';
import 'package:flutter_task/home/view/widgets/bannar.dart';
import 'package:flutter_task/home/view/widgets/categories_widget.dart';
import 'package:flutter_task/home/view/widgets/items.dart';
import 'package:flutter_task/home/view/widgets/no_data.dart';
import 'package:flutter_task/home/view/widgets/personal_data.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration.zero,
      () async =>
          Provider.of<CategoriesProvider>(context, listen: false).fetchData(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (BuildContext context, provider, _) => Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const PersonalData(),
          const Padding(
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
          const Text(
            'Explore diverse real estate services for all your needs: property management, construction, insurance and more in one place.',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
          const BannerWidget(),
          const Items(),
          if (provider.itemsIndex == 0) const CategoriesWidget(),
          if (provider.itemsIndex == 1)
            const NoDataClass(
              type: 'services',
            ),
          if (provider.itemsIndex == 2)
            const NoDataClass(
              type: 'orders',
            ),
        ]),
      ),
    );
  }
}
