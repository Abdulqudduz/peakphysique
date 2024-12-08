import 'package:flutter/material.dart';

class AnimatedBar extends StatelessWidget {
  const AnimatedBar(
      {super.key,
      required this.isSelected,
      required this.animatedBarWidth,
      this.gradient,
      this.color});

  final bool isSelected;
  final double animatedBarWidth;
  final Gradient? gradient;

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100), // Corrected duration
      margin: EdgeInsets.only(bottom: 2),
      height: 2,
      width: isSelected ? animatedBarWidth : 0,
      decoration: BoxDecoration(
        color: color,
        gradient: gradient,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
