import 'package:flutter/material.dart';
import 'package:peak_physique/custom_theme.dart';
import 'package:peak_physique/constant_gradient.dart';

class CustomScaffold extends StatelessWidget {
  late final Color? backgroundColor;
  late final Gradient? gradient;
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final BottomNavigationBar? bottomNavigationBar;
  final bool extendBody;

  CustomScaffold(
      {this.backgroundColor,
      this.gradient,
      this.appBar,
      this.body,
      this.bottomNavigationBar,
      this.extendBody = true});

  @override
  Widget build(BuildContext context) {
    final customTheme = Theme.of(context).extension<CustomTheme>();
    bool isGradient = customTheme?.customPrimaryGradientColor?.colors != null;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: extendBody,
      appBar: appBar,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: !isGradient ? customTheme!.customPrimaryColor : null,
          gradient: isGradient
              ? linearGradient(customTheme!.customPrimaryGradientColor!.colors)
              : null,
        ),
        child: body,
      ),
    );
  }
}
