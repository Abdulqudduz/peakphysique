import 'package:flutter/material.dart';

class ThemeToggleButtonModel {
  String name;
  Color toggleColour;
  String iconPath;
  ThemeToggleButtonModel({
    required this.name,
    this.toggleColour = Colors.blue,
    required this.iconPath,
  });
}
