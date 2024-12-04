import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart';

class NeoBox extends StatelessWidget {
  final height;
  final width;
  final child;
  final colour;
  final Offset? offsetUp;
  final Offset? offsetDown;
  final inset;
  final blurRadius;

  NeoBox({
    this.height,
    this.width,
    this.child,
    this.colour,
    this.offsetUp,
    this.offsetDown,
    this.inset = false,
    this.blurRadius,
  });
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(microseconds: 100),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            offset: offsetUp!,
            blurRadius: blurRadius,
            inset: inset,
          ),
          BoxShadow(
            color: Color(0xFFA7A9AF),
            offset: offsetDown!,
            blurRadius: blurRadius,
            inset: inset,
          ),
        ],
      ),
      child: child,
    );
  }
}
