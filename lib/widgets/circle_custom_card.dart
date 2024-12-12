import 'package:flutter/material.dart';
import 'package:peak_physique/custom_theme.dart';

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
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: !isGradient ? useColor : null,
        gradient: isGradient ? useGradient : null,
      ),
      child: child,
    );
  }
}
