import 'package:flutter/material.dart';
import 'package:oneface/classes/screenSizer.dart';
import 'package:oneface/pages/passportPage.dart';
import 'package:oneface/pages/telefonRaqamPage.dart';

import '../classes/robotHeader.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.h(24)),
          child: Column(
            children: [
              const Spacer(),

              /// 🤖 Robot + Background Circle
              const RobotHeader(),

              SizedBox(height: SizeConfig.h(30)),

              /// 🧾 Title
              Text(
                "Foydalanuvchi kirishi",
                style: TextStyle(
                  fontSize: SizeConfig.w(18),
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1A2C4E),
                ),
              ),

              SizedBox(height: SizeConfig.h(24)),

              /// 🔘 Buttons
              GradientButton(
                text: "Passport malumotlari bilan kirish",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PassportScreen()),
                  );
                },
              ),
              SizedBox(height: SizeConfig.h(14)),

              GradientButton(
                text: "Telefon raqami bilan kirish",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelefonScreen()),
                  );
                },
              ),
              SizedBox(height: SizeConfig.h(24)),

              /// 🔗 Bottom Text
              Text(
                "Yangi foydalanuvchimisiz ?",
                style: TextStyle(
                  fontSize: SizeConfig.w(13),
                  color: Color(0xFF1A2C4E),
                ),
              ),

              SizedBox(height: SizeConfig.h(6)),

              GestureDetector(
                onTap: () {},
                child: Text(
                  "Tizimda Ro’yxatdan o’tish...",
                  style: TextStyle(
                    fontSize: SizeConfig.w(14),
                    color: Color(0xFF2FA4C7),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
