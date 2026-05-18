import 'package:flutter/material.dart';
import 'package:oneface/classes/screenSizer.dart';

class OutlinedCyanButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const OutlinedCyanButton({
    super.key,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.w(500),
      height: SizeConfig.h(50),
      child: OutlinedButton(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(
          foregroundColor: const Color(0xFF29B6F6),
          side: BorderSide(color: Color(0xFF29B6F6), width: SizeConfig.w(1.5)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: SizeConfig.w(15),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
