import 'package:flutter/material.dart';

class CustomTheme extends ThemeExtension<CustomTheme> {
  final LinearGradient? customPrimaryGradientColor;
  final LinearGradient? customSecondaryGradientColor;
  final LinearGradient? textButtonBorderGradientColor;
  final LinearGradient? trasperentTextButtonBorderGradientColor;
  final LinearGradient? customCardGradientColor;
  final LinearGradient? customCircleCardGradientColor;
  final Color? highlightAndSplashColor;
  final Color? inactiveColor;
  final Color? customPrimaryColor;
  final Color? customSecondaryColor;
  final Color? textButtonBorderColor;
  final Color? trasperentTextButtonBorderColor;
  final Color? customCardColor;
  final Color? customCircleCardColor;

  const CustomTheme({
    this.customPrimaryGradientColor,
    this.customSecondaryGradientColor,
    this.textButtonBorderGradientColor,
    this.trasperentTextButtonBorderGradientColor,
    this.customCardGradientColor,
    this.customCircleCardGradientColor,
    this.highlightAndSplashColor,
    this.inactiveColor,
    this.customPrimaryColor,
    this.customSecondaryColor,
    this.textButtonBorderColor,
    this.trasperentTextButtonBorderColor,
    this.customCardColor,
    this.customCircleCardColor,
  });

  @override
  CustomTheme copyWith({
    //Gradient colors
    LinearGradient? customPrimaryGradientColor,
    LinearGradient? customSecondaryGradientColor,
    LinearGradient? textButtonBorderGradientColor,
    LinearGradient? trasperentTextButtonBorderGradientColor,
    LinearGradient? customCardGradientColor,
    LinearGradient? customCircleCardGradientColor,
    //Solid colors
    Color? highlightAndSplashColor,
    Color? inactiveColor,
    Color? customPrimaryColor,
    Color? customSecondaryColor,
    Color? textButtonBorderColor,
    Color? trasperentTextButtonBorderColor,
    Color? customCardColor,
    Color? customCircleCardColor,
  }) {
    return CustomTheme(
      //Gradient colors
      customPrimaryGradientColor:
          customPrimaryGradientColor ?? this.customPrimaryGradientColor,
      customSecondaryGradientColor:
          customSecondaryGradientColor ?? this.customSecondaryGradientColor,
      textButtonBorderGradientColor:
          textButtonBorderGradientColor ?? this.textButtonBorderGradientColor,
      trasperentTextButtonBorderGradientColor:
          trasperentTextButtonBorderGradientColor ??
              this.trasperentTextButtonBorderGradientColor,
      customCardGradientColor:
          customCardGradientColor ?? this.customCardGradientColor,
      customCircleCardGradientColor:
          customCircleCardGradientColor ?? this.customCircleCardGradientColor,

      //solid colors
      highlightAndSplashColor:
          highlightAndSplashColor ?? this.highlightAndSplashColor,
      inactiveColor: inactiveColor ?? this.inactiveColor,
      customPrimaryColor: customPrimaryColor ?? this.customPrimaryColor,
      customSecondaryColor: customSecondaryColor ?? this.customSecondaryColor,
      textButtonBorderColor:
          textButtonBorderColor ?? this.textButtonBorderColor,
      trasperentTextButtonBorderColor: trasperentTextButtonBorderColor ??
          this.trasperentTextButtonBorderColor,
      customCardColor: customCardColor ?? this.customCardColor,
      customCircleCardColor:
          customCircleCardColor ?? this.customCircleCardColor,
    );
  }

  @override
  CustomTheme lerp(ThemeExtension<CustomTheme>? other, double t) {
    if (other is! CustomTheme) return this;
    return CustomTheme(
      customPrimaryGradientColor: LinearGradient.lerp(
          customPrimaryGradientColor, other.customPrimaryGradientColor, t),
      customSecondaryGradientColor: LinearGradient.lerp(
          customSecondaryGradientColor, other.customSecondaryGradientColor, t),
      textButtonBorderGradientColor: LinearGradient.lerp(
          textButtonBorderGradientColor,
          other.textButtonBorderGradientColor,
          t),
      trasperentTextButtonBorderGradientColor: LinearGradient.lerp(
          trasperentTextButtonBorderGradientColor,
          other.trasperentTextButtonBorderGradientColor,
          t),
      customCardGradientColor: LinearGradient.lerp(
          customCardGradientColor, other.customCardGradientColor, t),
      customCircleCardGradientColor: LinearGradient.lerp(
          customCircleCardGradientColor,
          other.customCircleCardGradientColor,
          t),

      //Solid colors
      highlightAndSplashColor:
          Color.lerp(highlightAndSplashColor, other.highlightAndSplashColor, t),
      inactiveColor: Color.lerp(inactiveColor, other.inactiveColor, t),
      customPrimaryColor:
          Color.lerp(customPrimaryColor, other.customPrimaryColor, t),
      customSecondaryColor:
          Color.lerp(customSecondaryColor, other.customSecondaryColor, t),
      textButtonBorderColor:
          Color.lerp(textButtonBorderColor, other.textButtonBorderColor, t),
      trasperentTextButtonBorderColor: Color.lerp(
          trasperentTextButtonBorderColor,
          other.trasperentTextButtonBorderColor,
          t),
      customCardColor: Color.lerp(customCardColor, other.customCardColor, t),
      customCircleCardColor:
          Color.lerp(customCircleCardColor, other.customCircleCardColor, t),
    );
  }
}
