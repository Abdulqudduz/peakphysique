import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  Color colour = Colors.blueGrey;
  Line({required this.colour});
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: colour,
      height: 0,
      thickness: 1,
      endIndent: 0,
    );
  }
}
