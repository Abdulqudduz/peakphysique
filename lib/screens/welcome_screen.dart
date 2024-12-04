import 'package:flutter/material.dart';
import 'package:peak_physique/models/custom_icons.dart';
import 'package:peak_physique/route/route.dart';
import 'package:peak_physique/components/Custom_text.dart';

class WelcomeScreen extends StatelessWidget {
  static String id = 'welcome_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(CustomIcons.dragon),
          ),
          CustomText('Welcome to', colour: Colors.white),
          CustomText('PeakPhysique', colour: Colors.orange),
          CustomText(
              'Exercise is health, and your journey to '
              'strength, endurance, and confidence starts '
              'here. Let’s reach your peak together',
              colour: Colors.white),
        ],
      ),
    );
  }
}


//  TextButton(
//           onPressed: () {
//             Navigator.pushNamed(context, Routes.bottomNavBarScreen);
//           },
//           child: Text('Press Me'),
//         ),