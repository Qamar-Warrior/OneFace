import 'dart:ui';

import 'package:flutter/material.dart';

class RobotHeader extends StatelessWidget {
  const RobotHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: width * 0.55, // responsive height
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          /// 🔵 Background circle
          Positioned(
            left: width * 0.1,
            top: -width * 0.25,
            child: Container(
              width: width * 0.6,
              height: width * 0.6,
              decoration: BoxDecoration(
                color: const Color(0xFFBEF1FF),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: width * 0.08,
                    offset: Offset(width * 0.00, width * 0.06),
                  ),
                ],
              ),
            ),
          ),

          /// 🔵 Gradient blur circle
          Positioned(
            left: -width * 0.15,
            top: -width * 0.2,
            child: Container(
              width: width * 0.8,
              height: width * 0.8,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(209, 245, 255, 0.3),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: width * 0.06,
                    offset: Offset(width * 0.00, width * 0.06),
                  ),
                ],
              ),
              child: ClipOval(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: width * 0.04,
                    sigmaY: width * 0.04,
                  ),
                  child: Container(
                    color: const Color.fromRGBO(209, 245, 255, 0.3),
                  ),
                ),
              ),
            ),
          ),

          /// 🤖 Robot Image
          Positioned(
            bottom: -width * 0.14,
            left: -width * 0.10,
            child: Image.asset(
              'images/robot.png',
              width: width * 0.6, // scales with screen
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            bottom: -width * 0.10,
            left: -width * 0.06,
            child: Container(
              width: width * 0.3,
              height: width * 0.3,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: width * 0.1,
                    offset: Offset(width * 0.00, width * 0.06),
                  ),
                ],
              ),
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
