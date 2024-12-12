import 'package:flutter/material.dart';
import 'package:peak_physique/custom_theme.dart';

class CustomTextColor extends StatelessWidget {
  final Color color;
  final double size;
  final Offset? offset;
  final String text;
  final Gradient? gradient;

  const CustomTextColor({
    this.gradient,
    this.size = 25,
    this.offset,
    required this.text,
    this.color = Colors.white,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final customTheme = Theme.of(context).extension<CustomTheme>();
    final isGradient =
        customTheme?.customSecondaryGradientColor?.colors != null;

    final Color? defaultColor =
        !isGradient ? customTheme?.customSecondaryColor : null;
    final Gradient? defaultGradient = isGradient
        ? LinearGradient(
            colors: customTheme!.customSecondaryGradientColor!.colors,
            stops: [0.23, 0.70],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )
        : null;

    final Gradient? useGradient = gradient ?? defaultGradient;
    final Color? useColor = gradient == null ? defaultColor : null;

    if (!isGradient) {
      return Text(
        text,
        style: TextStyle(
          color: useColor,
          fontSize: size,
          fontFamily: 'TT commons',
          fontStyle: FontStyle.normal,
        ),
      );
    }

    return ShaderMask(
      shaderCallback: (bounds) {
        final Offset effectiveOffset = offset ?? Offset.zero;
        final Rect offsetBounds = Rect.fromLTWH(
          bounds.left + effectiveOffset.dx,
          bounds.top + effectiveOffset.dy,
          bounds.width,
          bounds.height,
        );

        return useGradient!.createShader(offsetBounds);
      },
      child: Text(
        text,
        style: TextStyle(
          color: null, // The color is handled by the ShaderMask
          fontSize: size,
          fontFamily: 'TT commons',
          fontStyle: FontStyle.normal,
        ),
      ),
    );
  }
}
