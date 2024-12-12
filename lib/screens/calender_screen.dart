import 'package:flutter/material.dart';
import 'package:peak_physique/widgets/custom_app_bar.dart';
import 'package:peak_physique/widgets/custom_scaffold.dart';

class CalenderScreen extends StatelessWidget {
  const CalenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: CustomAppBar(
        title: Text('Calender Screen'),
      ),
    );
  }
}
