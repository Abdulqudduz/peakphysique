import 'package:flutter/material.dart';

Gradient linearGradient(List<Color> colors) {
  return LinearGradient(
    colors: colors,
    stops: [0.23, 0.70],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
