import 'package:flutter/material.dart';

class RedButton extends StatelessWidget {
  const RedButton({
    Key? key,
    this.text,
    this.width,
    this.height,
    this.onTab,
    this.color,
    this.textColor, this.fontSize,
  }) : super(key: key);
  final String? text;
  final double? width;
  final double? height;
  final double? fontSize;
  final Color? color;
  final Color? textColor;
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
            style: TextStyle(
              fontSize: (fontSize==null)?16:fontSize,
              fontWeight: FontWeight.w500,
              color: textColor ?? Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
