import 'package:flutter/material.dart';
import 'package:oneface/classes/screenSizer.dart';

class FilledCyanButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const FilledCyanButton({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.w(500),
      height: SizeConfig.h(50),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF29B6F6),
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: SizeConfig.w(15),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
