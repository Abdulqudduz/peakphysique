import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final Color colour;

  CustomText({
    required this.text,
    this.size = 13,
    this.colour = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text!,
        style: TextStyle(
          fontSize: size,
          fontFamily: 'TT commons',
          fontStyle: FontStyle.normal,
        ),
      ),
    );
  }
}
