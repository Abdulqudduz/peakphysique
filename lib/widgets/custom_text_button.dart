import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    required this.onPressed,
    required this.child,
    this.color,
    this.gradient,
    this.height,
    this.width,
    this.borderRadius = 5,
  });

  final Function() onPressed;
  final Widget child;
  final Color? color;
  final Gradient? gradient;
  final double? borderRadius;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius!),
          color: color,
          gradient: gradient,
        ),
        child: child,
      ),
    );
  }
}
