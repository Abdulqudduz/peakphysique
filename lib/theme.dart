import 'package:flutter/material.dart';
import 'package:peak_physique/custom_theme.dart';
import 'package:peak_physique/constant_color.dart';

enum AppTheme {
  blueLightTheme,
  blueDarkTheme,
  orangeLightTheme,
  orangeDarkTheme,
  systemTheme,
}

// orange dark theme
ThemeData orangeDarkTheme = ThemeData(
  extensions: [
    CustomTheme(
      highlightAndSplashColor: KHighlightAndSplashColor,
      inactiveColor: KInactiveColor,
      customPrimaryGradientColor: LinearGradient(
        colors: KCustomPrimaryGradientColor,
      ),
      customSecondaryGradientColor: LinearGradient(
        colors: KCustomSecondaryGradientColor,
      ),
      textButtonBorderGradientColor: LinearGradient(
        colors: kTextButtonBorderGradientColor,
      ),
      trasperentTextButtonBorderGradientColor: LinearGradient(
        colors: kTrasperentTextButtonBorderGradientColor,
      ),
      customCardGradientColor: LinearGradient(
        colors: kCustomCardGradientColor,
      ),
      customCircleCardGradientColor: LinearGradient(
        colors: kCustomCircleCardGradientColor,
      ),
    ),
  ],
);

//blue dark theme
ThemeData blueDarkTheme = ThemeData(
    bottomNavigationBarTheme:
        BottomNavigationBarThemeData(backgroundColor: Colors.blue),
    extensions: [
      CustomTheme(
        highlightAndSplashColor: KHighlightAndSplashColor,
        inactiveColor: KInactiveColor,
        customPrimaryColor: KCustomPrimaryColor,
        customSecondaryColor: KCustomSecondaryColor,
        textButtonBorderColor: kTextButtonBorderColor,
        trasperentTextButtonBorderColor: kTrasperentTextButtonBorderColor,
        customCardColor: kCustomCardColor,
        customCircleCardColor: kCustomCardColor,
      )
    ]);

//blue light theme
ThemeData blueLightTheme = ThemeData.light();

//orange light theme
ThemeData orangeLightTheme = ThemeData(
  extensions: [
    CustomTheme(
      highlightAndSplashColor: KHighlightAndSplashColor,
      inactiveColor: KInactiveColor,
      customPrimaryGradientColor: LinearGradient(
        colors: KCustomPrimaryGradientColor,
      ),
      customSecondaryGradientColor: LinearGradient(
        colors: KCustomSecondaryGradientColor,
      ),
      textButtonBorderGradientColor: LinearGradient(
        colors: kTextButtonBorderGradientColor,
      ),
      trasperentTextButtonBorderGradientColor: LinearGradient(
        colors: kTrasperentTextButtonBorderGradientColor,
      ),
      customCardGradientColor: LinearGradient(
        colors: kCustomCardGradientColor,
      ),
      customCircleCardGradientColor: LinearGradient(
        colors: kCustomCircleCardGradientColor,
      ),
    ),
  ],
);
