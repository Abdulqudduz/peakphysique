import 'package:flutter/material.dart';
import 'package:peak_physique/custom_theme.dart';

import 'package:peak_physique/widgets/custom_scaffold.dart';
import 'package:peak_physique/widgets/custom_text_color.dart';
import 'package:peak_physique/widgets/custom_progress_bar.dart';
import 'package:peak_physique/constant_gradient.dart';

class GoalsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final customTheme = Theme.of(context).extension<CustomTheme>();
    bool isGradient = customTheme?.customPrimaryGradientColor?.colors != null;

    return CustomScaffold(
      backgroundColor: !isGradient ? customTheme!.customPrimaryColor : null,
      gradient: isGradient
          ? linearGradient(customTheme!.customPrimaryGradientColor!.colors)
          : null,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: customTheme!.appBarColor,
        title: CustomText(
          text: 'Goals',
          size: 23,
        ),
      ),
      body: Column(
        children: [
          Center(
            child: CustomProgressBar(
              height: 20,
              width: 200,
              progress: 100, // 50% progress (out of 100)
              foregroundColor: Colors.green,
              backgroundColor: Colors.grey,
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
