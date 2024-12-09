import 'package:flutter/material.dart';
import 'package:peak_physique/custom_theme.dart';

class CustomScaffold extends StatelessWidget {
  late final Color? color;
  late final Gradient? gradient;
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final BottomNavigationBar? bottomNavigationBar;

  CustomScaffold({
    this.color,
    this.gradient,
    this.appBar,
    this.body,
    this.bottomNavigationBar,
  });

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

    return Scaffold(
      appBar: appBar,
      body: Container(
        decoration: BoxDecoration(
          color: !isGradient ? useColor : null,
          gradient: isGradient ? useGradient : null,
        ),
        child: body,
      ),
    );
  }
}
