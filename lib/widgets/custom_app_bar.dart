import 'package:flutter/material.dart';
import 'package:peak_physique/custom_theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    this.title,
    this.leading,
    this.actions,
    this.automaticallyImplyLeading = false,
    this.elevation = 0,
    this.toolbarHeight = 60,
  });

  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;
  final bool automaticallyImplyLeading;
  final double elevation;
  final double toolbarHeight;

  @override
  Widget build(BuildContext context) {
    final customTheme = Theme.of(context).extension<CustomTheme>();

    return PreferredSize(
      preferredSize: Size.fromHeight(toolbarHeight),
      child: AppBar(
        title: title,
        toolbarHeight: toolbarHeight,
        leading: leading,
        actions: actions,
        automaticallyImplyLeading: automaticallyImplyLeading,
        backgroundColor:
            customTheme!.appBarColor!, // Transparent to show gradient
        elevation: elevation,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight);
}
