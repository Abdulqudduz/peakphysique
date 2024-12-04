import 'package:flutter/material.dart';
import 'package:peak_physique/models/custom_icons.dart';
import 'package:peak_physique/theme.dart';
import 'package:peak_physique/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:peak_physique/models/custom_icon_model.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Profile'),
        actions: [
          Container(
            
            child: Icon(CustomIcons.settings),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [],
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
