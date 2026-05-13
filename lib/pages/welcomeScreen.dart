import 'package:flutter/material.dart';
import 'package:oneface/classes/Reusable.dart';
import 'package:oneface/classes/screenSizer.dart';
import '../const.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Color(0xFF24D0FF),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.w(24)),
          child: Column(
            children: [
              const Spacer(flex: 3),

              /// 🧠 Logo (slightly above center)
              Image.asset('images/logo.png', height: SizeConfig.h(300)),

              const Spacer(flex: 2),

              /// 🧾 Text
              Text(
                "Kerakli tilni tanlang...",
                style: kTextStyle.copyWith(fontWeight: FontWeight.bold),
              ),

              SizedBox(height: SizeConfig.h(16)),

              /// 🌐 Language buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  ReusableButton(image: "images/uzbflag.jpg", language: "UZB"),

                  ReusableButton(image: "images/uzbflag.jpg", language: "УЗБ"),

                  ReusableButton(image: "images/rusflag.jpg", language: "РУС"),
                ],
              ),
              SizedBox(height: SizeConfig.h(28)),
            ],
          ),
        ),
      ),
    );
  }
}
