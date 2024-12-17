import 'package:flutter/material.dart';

import 'package:peak_physique/widgets/custom_scaffold.dart';
import 'package:peak_physique/custom_theme.dart';
import 'package:peak_physique/constant_gradient.dart';

class WorkoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final customTheme = Theme.of(context).extension<CustomTheme>();
    bool isGradient = customTheme?.customPrimaryGradientColor?.colors != null;

    return CustomScaffold(
      backgroundColor: !isGradient ? customTheme!.customPrimaryColor : null,
      gradient: isGradient
          ? linearGradient(customTheme!.customPrimaryGradientColor!.colors)
          : null,
      appBar: AppBar(
        backgroundColor: customTheme!.appBarColor,
        title: Text('Workout Screen'),
      ),
    );
  }
}
