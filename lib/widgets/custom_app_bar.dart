import 'package:flutter/material.dart';
import 'package:peak_physique/custom_theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    this.color,
    this.gradient,
    this.title,
    this.leading,
    this.actions,
    this.automaticallyImplyLeading = false,
    this.elevation = 0,
    this.height = kToolbarHeight,
  }) : super(key: key);

  final Color? color;
  final Gradient? gradient;
  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;
  final bool automaticallyImplyLeading;
  final double elevation;
  final double height;

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
    return PreferredSize(
      preferredSize: Size.fromHeight(height),
      child: Stack(
        children: [
          // Gradient Background
          Container(
            decoration: BoxDecoration(
              color: !isGradient ? useColor : null,
              gradient: isGradient ? useGradient : null,
            ),
          ),
          // AppBar Content
          AppBar(
            title: title,
            leading: leading,
            actions: actions,
            automaticallyImplyLeading: automaticallyImplyLeading,
            backgroundColor: Colors.transparent, // Transparent to show gradient
            elevation: elevation,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
