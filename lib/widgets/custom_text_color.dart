import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final Color? color;
  final double size;
  final Offset? offset;
  final String text;
  final TextAlign? textAlign;
  final Gradient? gradient;

  const CustomText({
    this.gradient,
    this.size = 25,
    this.offset,
    required this.text,
    this.color = Colors.white,
    this.textAlign,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (color != null) {
      return Text(
        text,
        textAlign: textAlign,
        style: TextStyle(
          color: color,
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

        return gradient!.createShader(offsetBounds);
      },
      child: Text(
        text,
        textAlign: textAlign,
        style: TextStyle(
          color: Colors.white,
          fontSize: size,
          fontFamily: 'TT commons',
          fontStyle: FontStyle.normal,
        ),
      ),
    );
  }
}
