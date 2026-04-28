import 'package:flutter/material.dart';
import 'package:oneface/classes/Reusable.dart';
import '../const.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF24D0FF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const Spacer(flex: 3),

              /// 🧠 Logo (slightly above center)
              Image.asset('images/logo.png'),

              const Spacer(flex: 2),

              /// 🧾 Text
              Text(
                "Kerakli tilni tanlang...",
                style: kTextStyle.copyWith(fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 16),

              /// 🌐 Language buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ReusableButton(image: "images/uzbflag.jpg", language: "UZB"),
                  const SizedBox(width: 12),
                  ReusableButton(image: "images/uzbflag.jpg", language: "УЗБ"),
                  const SizedBox(width: 12),
                  ReusableButton(image: "images/rusflag.jpg", language: "РУС"),
                ],
              ),

              const SizedBox(height: 28),
            ],
          ),
        ),
      ),
    );
  }
}
