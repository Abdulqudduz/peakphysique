import 'package:flutter/material.dart';
import 'components/custom_bottom_navigation_bar.dart';
import 'screens/goals_screen.dart';
import 'screens/workout_screen.dart';
import 'screens/home_screen.dart';
import 'screens/calender_screen.dart';
import 'screens/profile_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  static String id = 'bottom_nav_bar_screen';

  @override
  _BottomNavBarScreenState createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    GoalsScreen(),
    WorkoutScreen(),
    CalenderScreen(),
    ProfileScreen(),
  ];

  void _onIconTapped(int index) {
    print("Current index changed to: $index"); // Debug: Print the index
    setState(() {
      _currentIndex = index; // Update the current index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _currentIndex,
          children: _screens,
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _currentIndex,
        onIconTap: _onIconTapped,
      ),
    );
  }
}
