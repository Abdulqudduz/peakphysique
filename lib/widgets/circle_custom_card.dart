import 'package:flutter/material.dart';

class CircleCustomCard extends StatelessWidget {
  CircleCustomCard({
    this.child,
    this.color,
    this.gradient,
    this.shape,
    this.size,
  });

  final double? size;
  final Color? color;
  final Gradient? gradient;
  final Widget? child;
  final BoxShape? shape;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        gradient: gradient,
      ),
      child: child,
    );
  }
}
