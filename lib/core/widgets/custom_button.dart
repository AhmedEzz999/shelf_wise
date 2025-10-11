import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.onPressed,
    required this.backgroundColor,
    required this.text,
    required this.textSize,
    required this.textColor,
    this.borderRadius,
    super.key,
  });
  final void Function() onPressed;
  final Color backgroundColor;
  final String text;
  final double textSize;
  final Color textColor;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadiusGeometry.circular(16),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: textSize, color: textColor),
        ),
      ),
    );
  }
}
