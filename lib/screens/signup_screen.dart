import 'package:flutter/material.dart';
import 'package:peak_physique/custom_theme.dart';
import 'package:peak_physique/constant_gradient.dart';
import 'package:peak_physique/widgets/custom_scaffold.dart';

class SignupScreen extends StatelessWidget {
  static const String id = 'signup_screen';
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final customTheme = Theme.of(context).extension<CustomTheme>();
    bool isGradient = customTheme?.customPrimaryGradientColor?.colors != null;

    return CustomScaffold(
      backgroundColor: customTheme!.customPrimaryColor,
      gradient: isGradient
          ? linearGradient(customTheme!.customPrimaryGradientColor!.colors)
          : null,
      appBar: AppBar(
        backgroundColor: !isGradient ? customTheme!.appBarColor : null,
        title: Text('Signup Screen'),
      ),
    );
  }
}
