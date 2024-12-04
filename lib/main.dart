import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'route/route.dart';
import 'package:peak_physique/theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) {
        return ThemeProvider();
      },
      child: OpayApp(),
    ),
  );
}

class OpayApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.welcomeScreen,
      onGenerateRoute: Routes.generateRoute,
      theme: Provider.of<ThemeProvider>(context).themeData,
      darkTheme: Provider.of<ThemeProvider>(context).dark,
      themeMode: Provider.of<ThemeProvider>(context).themeMode,
    );
  }
}
