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

    return PreferredSize(
      preferredSize: Size.fromHeight(height),
      child: Stack(
        children: [
          // Gradient Background
          Container(
            decoration: BoxDecoration(
              color: color,
              gradient: (gradient != null) ? gradient : null,
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
