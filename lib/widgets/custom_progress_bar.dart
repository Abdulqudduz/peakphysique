import 'package:flutter/material.dart';

class CustomProgressBar extends StatelessWidget {
  CustomProgressBar({
    this.height = 10,
    this.width = 100,
    this.progress = 50,
    this.foregroundColor,
    this.backgroundColor,
    this.foregroundGradient,
    this.backgroundGradient,
  });

  final double height;
  final double width;
  final double progress;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final Gradient? foregroundGradient;
  final Gradient? backgroundGradient;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        gradient: backgroundGradient,
        borderRadius: BorderRadius.circular(height / 2),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: progress, // Set the width according to the progress value
          height: height,
          decoration: BoxDecoration(
            color: foregroundColor,
            gradient: foregroundGradient,
            borderRadius: BorderRadius.circular(height / 2),
          ),
        ),
      ),
    );
  }
}
