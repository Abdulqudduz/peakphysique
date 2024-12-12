import 'package:flutter/material.dart';
import 'package:peak_physique/custom_theme.dart';

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
    final customTheme = Theme.of(context).extension<CustomTheme>();
    bool isGradient = customTheme?.customPrimaryGradientColor?.colors != null;
    final Color? defaultColor =
        !isGradient ? customTheme!.customPrimaryColor : null;
    final LinearGradient? defaultGradient = isGradient
        ? LinearGradient(
            colors: customTheme!.customPrimaryGradientColor!.colors,
            stops: [0.23, 0.70],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )
        : null;
    Gradient? useGradient;
    Color? useColor;
    if (gradient == null) {
      useColor = defaultColor;
      useGradient = defaultGradient;
    } else {
      useGradient = gradient!;
    }
    return TextButton(
      onPressed: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius!),
          color: !isGradient ? useColor : null,
          gradient: isGradient ? useGradient : null,
        ),
        child: child,
      ),
    );
  }
}
