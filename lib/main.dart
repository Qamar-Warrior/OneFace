import 'package:flutter/material.dart';
import 'package:oneface/pages/welcomeScreen.dart';
import 'package:flutter/services.dart'; // Required for SystemChrome

void main() async {
  // 1. Ensure the platform is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // 2. Lock the orientation to Portrait only
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const OneFace());
}

class OneFace extends StatelessWidget {
  const OneFace({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Montserrat', // <-- replace with your font
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
      ),
      home: WelcomeScreen(),
    );
  }
}
