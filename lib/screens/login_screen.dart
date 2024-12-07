import 'package:flutter/material.dart';

// class LoginScreen extends StatelessWidget {
//   static String id = 'login_screen';

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gradient on Selection"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300), // For smooth transition
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: isSelected
                  ? null // Gradient doesn't require a solid color
                  : Colors.blue,
              gradient: isSelected
                  ? LinearGradient(
                      colors: [Colors.purple, Colors.red],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )
                  : null,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                isSelected ? "Selected" : "Not Selected",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
