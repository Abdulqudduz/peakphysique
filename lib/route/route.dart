import 'package:flutter/material.dart';
import 'package:peak_physique/bottom_nav_bar_screen.dart';
import 'package:peak_physique/screens/welcome_screen.dart';
import 'package:peak_physique/screens/login_screen.dart';
import 'package:peak_physique/screens/signup_screen.dart';

class Routes {
  static String welcomeScreen = WelcomeScreen.id;
  static String signupScreen = SignupScreen.id;
  static String loginScreen = LoginScreen.id;
  static String bottomNavBarScreen = BottomNavBarScreen.id;

  static Route<dynamic> generateRoute(RouteSettings settings) {
    if (settings.name == welcomeScreen) {
      return MaterialPageRoute(builder: (_) => WelcomeScreen());
    } else if (settings.name == bottomNavBarScreen) {
      return MaterialPageRoute(builder: (_) => BottomNavBarScreen());
    } else if (settings.name == signupScreen) {
      return MaterialPageRoute(builder: (_) => SignupScreen());
    } else if (settings.name == loginScreen) {
      return MaterialPageRoute(builder: (_) => LoginScreen());
    } else {
      throw Exception('Route not found');
    }
  }
}
