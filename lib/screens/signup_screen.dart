import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  static const String id = 'signup_screen';
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup Screen'),
      ),
    );
  }
}
