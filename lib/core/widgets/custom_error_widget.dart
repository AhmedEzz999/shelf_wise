import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({required this.errorMessage, super.key});
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Text(
      errorMessage,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 26, color: Colors.white),
    );
  }
}
