import 'package:flutter/material.dart';
import 'package:oneface/classes/screenSizer.dart';

class PositionedBackgroundImage extends StatelessWidget {
  const PositionedBackgroundImage({
    super.key,
    required this.imagePath,
    required this.top,
    required this.left,
    required this.height,
    this.opacity = 0.45,
  });

  final String imagePath;
  final double top;
  final double left;
  final double height;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Opacity(
        opacity: opacity,
        child: Image.asset(
          imagePath,
          height: height,
          fit: BoxFit.contain,
          errorBuilder: (_, __, ___) => Container(
            height: height,
            margin: EdgeInsets.symmetric(horizontal: SizeConfig.w(24)),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFB8D4F0),
                  Color(0xFFD6E8FB),
                  Color(0xFFEFF6FF),
                ],
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(
              Icons.credit_card,
              size: SizeConfig.w(120),
              color: const Color(0xFFADCAE8),
            ),
          ),
        ),
      ),
    );
  }
}
