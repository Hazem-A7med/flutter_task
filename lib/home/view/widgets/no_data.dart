import 'package:flutter/material.dart';

class NoDataClass extends StatelessWidget {
  const NoDataClass({super.key, required this.type});

  final String type;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.only(bottom: 60, left: 30, right: 30),
        children: [
          SizedBox(
            width: 80,
            height: 180,
            child: Image.asset(
              'assets/images/EmptyState.png',
              width: 50,
            ),
          ),
          Center(
              child: Text(
            'No $type found',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
          )),
          Center(
              child: Text(
            'you can place your needed $type to let serve you.',
            style: const TextStyle(fontSize: 18, color: Colors.grey),
            textAlign: TextAlign.center,
          )),
        ],
      ),
    );
  }
}
