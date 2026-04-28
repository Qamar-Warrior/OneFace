import 'package:flutter/material.dart';

class RobotHeader extends StatelessWidget {
  const RobotHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: Stack(
        alignment: Alignment.center,
        children: [
          /// 🔵 Gradient Circle
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  const Color(0xFFBEE7F2),
                  const Color(0xFFBEE7F2).withOpacity(0.2),
                  Colors.transparent,
                ],
                stops: const [0.4, 0.7, 1],
              ),
            ),
          ),

          /// 🤖 Robot Image
          Positioned(
            bottom: 0,
            child: Image.asset(
              'assets/robot.png', // <-- replace with your image
              height: 180,
              fit: BoxFit.contain,
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
