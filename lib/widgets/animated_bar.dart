import 'package:flutter/material.dart';

class AnimatedBar extends StatelessWidget {
  const AnimatedBar({
    super.key,
    required this.isSelected,
    required this.animatedBarWidth,
    required this.animatedBarcolor,
  });

  final bool isSelected;
  final double animatedBarWidth;
  final List<Color> animatedBarcolor;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100), // Corrected duration
      margin: EdgeInsets.only(bottom: 2),
      height: 2,
      width: isSelected ? animatedBarWidth : 0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: animatedBarcolor,
          stops: [0.0, 1.0], // Gradient stop positions
          begin: Alignment.topLeft, // Gradient direction start
          end: Alignment.bottomRight, // Gradient direction end
        ),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
