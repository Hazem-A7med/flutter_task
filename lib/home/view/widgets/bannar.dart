import 'package:flutter/material.dart';
import 'package:flutter_task/home/view/widgets/red_button.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(decoration: BoxDecoration(color: const Color(0xffFFF5F5),borderRadius: BorderRadius.circular(15)),
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
               const Expanded(
                flex: 10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Multi-Services for Your Real Estate Needs',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    RedButton(
                      text: 'Order',
                      height: 35,
                      width: 130,
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 8,
                child: Image.asset(
                  'assets/images/02 Man Presentation Miniature Building.png',
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.withOpacity(.4),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: RedButton(width: 40, height: 10),
            ),
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.withOpacity(.4),
              ),
            ),
          ],
        ),
            const SizedBox(
            height: 30,),
      ],
    );
  }
}
