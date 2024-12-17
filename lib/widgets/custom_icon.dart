import 'package:flutter/material.dart';

/// A widget for displaying icons with a gradient effect or a solid color.
///
/// The `GradientIcon` widget paints the provided `icon` with a `gradient` shader or a solid color,
/// creating a visually appealing representation of the icon. The `size` parameter determines the
/// size of the icon widget.
class CustomIcon extends StatelessWidget {
  final IconData icon;
  final Gradient? gradient;
  final Color? color;
  final double size;
  final Offset? offset;

  /// Constructs a new `GradientIcon` widget.
  ///
  /// - `icon`: The IconData representing the desired icon.
  /// - `gradient`: The Gradient object defining the gradient colors and stops (optional).
  /// - `solidColor`: The Color to use when a gradient is not provided (optional).
  /// - `size`: The size of the icon (default is 25).
  /// - `key`: An optional key to identify this widget.
  const CustomIcon({
    required this.icon,
    this.gradient,
    this.color,
    this.size = 25,
    this.offset,
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: CustomPaint(
        size: Size(size, size),
        painter: _GradientIconPainter(
          icon: icon,
          color: color,
          gradient: gradient,
          iconSize: size,
          offsets: offset,
        ),
      ),
    );
  }
}

/// The painter class responsible for painting the icon with the gradient shader or a solid color.
///
/// The `_GradientIconPainter` class extends the `CustomPainter` class and is used
/// by the `GradientIcon` widget to paint the provided `icon`.
class _GradientIconPainter extends CustomPainter {
  final IconData icon;
  final Gradient? gradient;
  final Color? color;
  final double iconSize;
  final Offset? offsets;

  /// Constructs a new `_GradientIconPainter` object.
  ///
  /// - `icon`: The IconData representing the desired icon.
  /// - `gradient`: The Gradient object defining the gradient colors and stops (optional).
  /// - `solidColor`: The Color to use when a gradient is not provided (optional).
  /// - `iconSize`: The size of the icon.
  _GradientIconPainter({
    required this.icon,
    this.gradient,
    this.color,
    required this.iconSize,
    this.offsets,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // Determine paint based on gradient or solid color
    final Paint paint = Paint();

    if (gradient != null) {
      paint.shader = gradient!.createShader(
        Rect.fromLTWH(0.0, 0.0, size.width, size.height),
      );
    } else if (color != null) {
      paint.color = color!;
    }

    // Create a TextPainter to render the icon character
    final TextPainter textPainter = TextPainter(
      textDirection: TextDirection.ltr,
      text: TextSpan(
        text: String.fromCharCode(icon.codePoint),
        style: TextStyle(
          foreground: paint,
          fontFamily: icon.fontFamily,
          fontSize: iconSize,
        ),
      ),
    );
    textPainter.layout(
      minWidth: 0,
      maxWidth: size.width,
    );

    // Calculate the center position to horizontally and vertically align the icon
    final xCenter = (size.width - textPainter.width) / 2;
    final yCenter = (size.height - textPainter.height) / 2;

    // Create an offset for the icon's position within the canvas
    final offset = offsets ?? Offset(xCenter, yCenter);

    // Paint the icon on the canvas at the specified offset
    textPainter.paint(canvas, offset);
  }

  @override
  bool shouldRepaint(_GradientIconPainter oldDelegate) {
    return icon != oldDelegate.icon ||
        gradient != oldDelegate.gradient ||
        color != oldDelegate.color ||
        iconSize != oldDelegate.iconSize;
  }
}
