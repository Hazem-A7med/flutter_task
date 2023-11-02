import 'package:flutter/material.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          shrinkWrap: true,
          physics: const AlwaysScrollableScrollPhysics(),
          itemBuilder: (context, index) => (index==0)?Padding(
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
          ):Card(
              elevation: .4,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Image.asset(
                        'assets/images/${listItems[index-1].imageName}.png',
                        width: 25),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      listItems[index-1].title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    const Icon(
                      Icons.arrow_forward_rounded,
                      color: Colors.grey,
                    )
                  ],
                ),
              )),
          separatorBuilder: (context, index) => const SizedBox(
                height: 5,
              ),
          itemCount: (listItems.length)+1),
    );
  }
}

class Data {
  String imageName;
  String title;

  Data({required this.imageName, required this.title});
}

List<Data> listItems = [
  Data(imageName: 'Vector', title: 'Constructions'),
  Data(imageName: 'Categpry_S', title: 'Insurances'),
  Data(imageName: 'Vector-2', title: 'Legal'),
  Data(imageName: 'Vector-3', title: 'Buy & Sell'),
  Data(imageName: 'Vector-4', title: 'Accounting Services'),
];
