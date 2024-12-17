import 'package:flutter/material.dart';
import 'package:peak_physique/custom_theme.dart';
import 'package:peak_physique/models/custom_icons.dart';
import 'package:peak_physique/route/route.dart';
import 'package:peak_physique/widgets/custom_icon.dart';
import 'package:peak_physique/widgets/custom_text_button.dart';
import 'package:peak_physique/widgets/custom_text_color.dart';
import 'package:peak_physique/widgets/custom_scaffold.dart';
import 'package:peak_physique/constant_gradient.dart';

class WelcomeScreen extends StatelessWidget {
  static String id = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    final customTheme = Theme.of(context).extension<CustomTheme>();
    bool isGradient = customTheme?.customPrimaryGradientColor?.colors != null;
    return CustomScaffold(
      backgroundColor: !isGradient ? customTheme!.customPrimaryColor : null,
      gradient: isGradient
          ? linearGradient(customTheme!.customPrimaryGradientColor!.colors)
          : null,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomIcon(
                icon: CustomIcons.dragon,
                color: !isGradient ? customTheme!.customSecondaryColor : null,
                gradient: isGradient
                    ? linearGradient(
                        customTheme!.customSecondaryGradientColor!.colors)
                    : null,
                size: 200,
              ),
            ),
            CustomText(
              text: 'Welcome to',
              color: Colors.white,
              size: 20,
            ),
            CustomText(
              text: 'PeakPhysique',
              // color: Colors.orange,
              size: 30,
              color: !isGradient ? customTheme!.customSecondaryColor : null,
              gradient: isGradient
                  ? linearGradient(
                      customTheme!.customSecondaryGradientColor!.colors)
                  : null,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CustomText(
                text: 'Exercise is health, and your journey to '
                    'strength, endurance, and confidence starts '
                    'here, Let’s reach your peak together',
                color: Colors.white,
                size: 10,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 120,
            ),
            CustomTextButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.loginScreen);
              },
              height: 50,
              width: 280,
              color: !isGradient ? customTheme!.customSecondaryColor : null,
              gradient: isGradient
                  ? linearGradient(
                      customTheme!.customSecondaryGradientColor!.colors)
                  : null,
              child: Center(
                child: CustomText(
                  text: 'Get started',
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
            Text(
              'data',
            )
          ],
        ),
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


  
        