import 'package:flutter/material.dart';
import 'package:oneface/pages/welcomeScreen.dart';

void main() {
  runApp(const OneFace());
}

class OneFace extends StatelessWidget {
  const OneFace({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Montserrat', // <-- replace with your font
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: WelcomeScreen(),
    );
  }
}
