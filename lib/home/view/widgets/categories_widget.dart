import 'package:flutter/material.dart';
import 'package:flutter_task/home/controller/categories_provider.dart';
import 'package:provider/provider.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CategoriesProvider>(
      builder: (context, provider, _) => (provider.loadedData)
          ? Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                itemBuilder: (context, index) => Card(
                    elevation: .4,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.0,
                        vertical: 10,
                      ),
                      child: Row(
                        children: [
                          Text(
                            provider.categories[index].id.toString(),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            provider.categories[index].name ?? '',
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
                itemCount: (provider.categories.length),
              ),
            )
          : const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: CircularProgressIndicator(
                color: Colors.red,
            ),
              )),
    );
  }
}
