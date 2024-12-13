import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    this.child,
    this.color,
    this.gradient,
    this.height,
    this.width,
    this.borderRadius = 5,
  });

  final double? height;
  final double? width;
  final Color? color;
  final Gradient? gradient;
  final Widget? child;

  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius!),
        color: color,
        gradient: gradient,
      ),
      child: child,
    );
  }
}
