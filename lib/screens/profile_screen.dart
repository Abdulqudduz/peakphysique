import 'package:flutter/material.dart';
import 'package:peak_physique/models/custom_icons.dart';
import 'package:peak_physique/theme.dart';
import 'package:peak_physique/theme_provider.dart';
import 'package:provider/provider.dart';

import 'package:peak_physique/widgets/custom_scaffold.dart';
import 'package:peak_physique/custom_theme.dart';
import 'package:peak_physique/constant_gradient.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final customTheme = Theme.of(context).extension<CustomTheme>();
    bool isGradient = customTheme?.customPrimaryGradientColor?.colors != null;

    return CustomScaffold(
      backgroundColor: !isGradient ? customTheme!.customPrimaryColor : null,
      gradient: isGradient
          ? linearGradient(customTheme!.customPrimaryGradientColor!.colors)
          : null,
      appBar: AppBar(
        backgroundColor: customTheme!.appBarColor,
        automaticallyImplyLeading: false,
        title: Center(child: Text('Profile')),
        actions: [
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Icon(CustomIcons.settings),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Provider.of<ThemeProvider>(context, listen: false)
                    .toggleTheme(AppTheme.blueLightTheme);
              },
              child: Text('Blue LightTheme'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<ThemeProvider>(context, listen: false)
                    .toggleTheme(AppTheme.blueDarkTheme);
              },
              child: Text('Blue DarkTheme'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<ThemeProvider>(context, listen: false)
                    .toggleTheme(AppTheme.orangeLightTheme);
              },
              child: Text('Orange LightTheme'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<ThemeProvider>(context, listen: false)
                    .toggleTheme(AppTheme.orangeDarkTheme);
              },
              child: Text('Orange DarkTheme'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<ThemeProvider>(context, listen: false)
                    .toggleTheme(AppTheme.systemTheme);
              },
              child: Text('System Theme'),
            ),
          ],
        ),
      ),
    );
  }
}

//  children: [
//       ElevatedButton(
//         onPressed: () {
//           Provider.of<ThemeProvider>(context, listen: false)
//               .toggleTheme(AppTheme.light);
//         },
//         child: Text('Light Theme'),
//       ),
//       SizedBox(
//         height: 100,
//       ),
//       ElevatedButton(
//         onPressed: () {
//           Provider.of<ThemeProvider>(context, listen: false)
//               .toggleTheme(AppTheme.dark);
//         },
//         child: Text('Dark Theme'),
//       ),
//       SizedBox(
//         height: 100,
//       ),
//       ElevatedButton(
//         onPressed: () {
//           Provider.of<ThemeProvider>(context, listen: false)
//               .toggleTheme(AppTheme.system);
//         },
//         child: Text('System Theme'),
//       ),
//       SizedBox(
//         height: 100,
//       ),
//       ElevatedButton(
//         onPressed: () {
//           Provider.of<ThemeProvider>(context, listen: false)
//               .toggleTheme(AppTheme.slateMist);
//         },
//         child: Text('Slate Mist Theme'),
//       ),
//     ],
