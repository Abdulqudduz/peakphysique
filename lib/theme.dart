import 'package:flutter/material.dart';

enum AppTheme {
  light,
  dark,
  slateMist,
  system,
}

ThemeData slateMistTheme = ThemeData(
  // Primary color used for widgets like AppBar, FloatingActionButton, etc.
  primaryColor: Colors.blueGrey[900],

  // AppBar customization
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.green,
    foregroundColor: Colors.white, // Text and icons in the AppBar
    elevation: 4,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),

  // BottomNavigationBar customization
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.blueGrey[900],
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.blueGrey,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
  ),

  // Scaffold background
  scaffoldBackgroundColor: Colors.blueGrey[900],

  // Divider color
  dividerColor: Colors.blueGrey,

  // Icon colors
  iconTheme: IconThemeData(
    color: Colors.blueGrey,
  ),

  // Text colors and styling
  textTheme: TextTheme(
    bodySmall: TextStyle(color: Colors.white, fontSize: 16),
    bodyMedium: TextStyle(color: Colors.blueGrey[200], fontSize: 14),
    headlineSmall: TextStyle(
        color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
    headlineMedium: TextStyle(color: Colors.white, fontSize: 20),
    // bodySmall: TextStyle(color: Colors.blueGrey[100]),
  ),

  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Colors.green,
      backgroundColor: Colors.blueGrey[800], // Background color
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      // overlayColor: WidgetStateProperty.all(Colors.green.withOpacity(0.1)), // Ripple effect
    ),
  ),

  // ElevatedButton styling
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Colors.green, // Text color
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  ),

  // Input decoration for TextFields
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.blueGrey[800],
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.blueGrey),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.green),
    ),
    labelStyle: TextStyle(color: Colors.blueGrey[100]),
  ),

  // FloatingActionButton styling
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.green,
    foregroundColor: Colors.white,
  ),

  // Chip styling
  chipTheme: ChipThemeData(
    backgroundColor: Colors.blueGrey[800],
    labelStyle: TextStyle(color: Colors.white),
    selectedColor: Colors.green,
    secondarySelectedColor: Colors.green[700],
    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    brightness: Brightness.dark,
  ),

  // Progress indicator color
  progressIndicatorTheme: ProgressIndicatorThemeData(
    color: Colors.green,
    linearTrackColor: Colors.blueGrey[700],
  ),

  // Popup menu
  popupMenuTheme: PopupMenuThemeData(
    color: Colors.blueGrey[800],
    textStyle: TextStyle(color: Colors.white),
  ),
);

ThemeData lightTheme = ThemeData.light().copyWith(
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.red,
    foregroundColor: Colors.white, // Text and icons in the AppBar
    elevation: 4,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
);
ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: Colors.pink,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white, // Text and icons in the AppBar
    elevation: 4,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
);
