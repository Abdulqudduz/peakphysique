import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final BottomNavigationBar? bottomNavigationBar;
  final Gradient? gradient;
  final Color? color;

  CustomScaffold({
    this.appBar,
    this.body,
    this.bottomNavigationBar,
    this.gradient,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Container(
        decoration: BoxDecoration(
          color: color,
          gradient: (gradient != null) ? gradient : null,
        ),
        child: body,
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
