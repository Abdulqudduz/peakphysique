import 'package:flutter/material.dart';

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
    return Scaffold(
      extendBody: extendBody,
      appBar: appBar,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundColor,
          gradient: gradient,
        ),
        child: body,
      ),
    );
  }
}
