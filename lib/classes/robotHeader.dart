import 'dart:ui';

import 'package:flutter/material.dart';

class RobotHeader extends StatelessWidget {
  const RobotHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topLeft,
        children: [
          Positioned(
            // Move this slightly further up and right than the main circle
            left: 42, // Adjusted from -52
            top: -105, // Adjusted from 145 (moved up 40px)
            child: Container(
              width: 236, // Slightly smaller than 310
              height: 236, // Slightly smaller than 310
              decoration: BoxDecoration(
                color: const Color(0xFFBEF1FF), // Crisp background color
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 30,
                    offset: const Offset(6, 12),
                  ),
                ],
                // Removed original blur/shadow/backdrop from here
              ),
            ),
          ),

          /// 🔵 Gradient Circle
          Positioned(
            left: -52,
            top: -85,
            child: Container(
              width: 310,
              height: 310,
              decoration: BoxDecoration(
                color: Color.fromRGBO(209, 245, 255, 0.3),
                shape: BoxShape.circle,
                // Box shadow implementation
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromRGBO(0, 0, 0, 0.25),
                    blurRadius: 30,
                    offset: const Offset(6, 12),
                  ),
                ],
              ),
              // ClipOval ensures the blur stays within the circle
              child: ClipOval(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                  child: Container(
                    color: const Color.fromRGBO(209, 245, 255, 0.3),
                  ),
                ),
              ),
            ),
          ),

          /// 🤖 Robot Image
          Positioned(
            bottom: 0,
            left: -118,
            child: Image.asset(
              'images/robot.png',
              width: 330,
              height: 335, // <-- replace with
              // your image
            ),
          ),
        ],
      ),
    );
  }
}

class GradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const GradientButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 52,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF3DB2D4), Color(0xFF2FA4C7)],
          ),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF2FA4C7).withOpacity(0.3),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
