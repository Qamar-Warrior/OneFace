import 'package:flutter/material.dart';

import '../classes/robotHeader.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const Spacer(),

              /// 🤖 Robot + Background Circle
              const RobotHeader(),

              const SizedBox(height: 30),

              /// 🧾 Title
              const Text(
                "Foydalanuvchi kirishi",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1A2C4E),
                ),
              ),

              const SizedBox(height: 24),

              /// 🔘 Buttons
              GradientButton(
                text: "Pasport malumotlari bilan kirish",
                onTap: () {},
              ),

              const SizedBox(height: 14),

              GradientButton(text: "Telefon raqami bilan kirish", onTap: () {}),

              const SizedBox(height: 24),

              /// 🔗 Bottom Text
              const Text(
                "Yangi foydalanuvchimisiz ?",
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),

              const SizedBox(height: 6),

              GestureDetector(
                onTap: () {},
                child: const Text(
                  "Tizimda Ro’yxatdan o’tish...",
                  style: TextStyle(
                    fontSize: 14,
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
