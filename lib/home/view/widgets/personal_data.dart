import 'package:flutter/material.dart';

class PersonalData extends StatelessWidget {
  const PersonalData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage(
            'https://pngimg.com/uploads/man/man_PNG6533.png',
          ),
          // backgroundColor: Colors.white,
          radius: 20,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'Hey, Ahmed',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
        ),
        Image.asset(
          'assets/images/Image-1.png',
          height: 25,
        )
      ],
    );
  }
}
