import 'package:flutter/material.dart';
import 'package:peak_physique/widgets/custom_app_bar.dart';
import 'package:peak_physique/widgets/custom_scaffold.dart';

class WorkoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: CustomAppBar(
        title: Text('Workout Screen'),
      ),
    );
  }
}
