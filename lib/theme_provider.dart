import 'package:flutter/material.dart';
import 'package:peak_physique/theme.dart';

class ThemeProvider with ChangeNotifier {
  // Default theme mode
  ThemeMode _themeMode = ThemeMode.system;
  // Default theme data
  ThemeData _lightThemeData = blueLightTheme;
  ThemeData _darkThemeData = orangeDarkTheme;

  //method to access the current theme data
  ThemeMode get themeMode => _themeMode;
  ThemeData get lightThemeData => _lightThemeData;
  ThemeData get darkThemeData => _darkThemeData;

  // Set a specific theme mode
  void setThemeMode(ThemeMode themeMode) {
    _themeMode = themeMode;
  }

  // Set a specific light theme
  void setLightTheme(ThemeData themeData) {
    _lightThemeData = themeData;
    _themeMode = ThemeMode.light;
  }

  // Set a specific dark theme
  void setDarkTheme(ThemeData themeData) {
    _darkThemeData = themeData;
    _themeMode = ThemeMode.dark;
  }

  // Toggle between the various theme
  void toggleTheme(AppTheme theme) {
    switch (theme) {
      case AppTheme.blueLightTheme:
        setThemeMode(ThemeMode.light);
        setLightTheme(blueLightTheme);
        break;
      case AppTheme.blueDarkTheme:
        setThemeMode(ThemeMode.dark);
        setDarkTheme(blueDarkTheme);
        break;
      case AppTheme.orangeLightTheme:
        setThemeMode(ThemeMode.light);
        setLightTheme(orangeLightTheme);
        break;
      case AppTheme.orangeDarkTheme:
        setThemeMode(ThemeMode.dark);
        setDarkTheme(orangeDarkTheme);

        break;
      case AppTheme.systemTheme:
        setThemeMode(ThemeMode.system);
    }
    notifyListeners();
  }
}
