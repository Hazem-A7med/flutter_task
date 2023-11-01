import 'package:flutter/material.dart';

class RedButton extends StatelessWidget {
  const RedButton({
    Key? key,
    this.text,
    this.width,
    this.height,
    this.onTab,
    this.color,
  }) : super(key: key);
  final String? text;
  final double? width;
  final double? height;
  final Color? color;
  final Function()? onTab;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
          color: color ?? const Color(0xffD61116),
        ),
        child: Center(
          child: Text(
            text ?? '',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
