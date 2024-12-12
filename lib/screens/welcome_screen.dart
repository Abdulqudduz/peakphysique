import 'package:flutter/material.dart';
import 'package:peak_physique/custom_theme.dart';
import 'package:peak_physique/models/custom_icons.dart';
import 'package:peak_physique/route/route.dart';
import 'package:peak_physique/widgets/custom_text_color.dart';
import 'package:peak_physique/widgets/custom_scaffold.dart';

class WelcomeScreen extends StatelessWidget {
  static String id = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    final customTheme = Theme.of(context).extension<CustomTheme>();
    bool isGradient = customTheme?.customPrimaryGradientColor?.colors != null;
    return CustomScaffold(
      color: !isGradient ? customTheme!.customPrimaryColor : null,
      gradient: isGradient
          ? LinearGradient(
              colors: customTheme!.customPrimaryGradientColor!.colors,
              stops: [0.23, 0.70],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )
          : null,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(CustomIcons.dragon),
          ),
          CustomTextColor(
            text: 'Welcome to',
            // color: Colors.white,
            size: 14,
          ),
          CustomTextColor(
            text: 'PeakPhysique',
            // color: Colors.orange,
            size: 20,
          ),
          CustomTextColor(
            text: 'Exercise is health, and your journey to '
                'strength, endurance, and confidence starts '
                'here. Let’s reach your peak together',
            // color: Colors.white,
            size: 20,
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.bottomNavBarScreen);
            },
            child: Text('Press Me'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.loginScreen);
            },
            child: Text('Login Screen'),
          ),
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


  
        