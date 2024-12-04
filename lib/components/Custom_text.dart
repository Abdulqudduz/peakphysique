import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String? text;

  final Color colour;

  CustomText(this.text, {required this.colour});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(text!),
    );
  }
}
