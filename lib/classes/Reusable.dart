import 'package:flutter/material.dart';

import '../const.dart';

class ReusableButton extends StatelessWidget {
  ReusableButton({super.key, required this.image, required this.language});
  String image = '';
  String language = '';
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Button Tapped!");
      },
      child: Container(
        width: 99,
        height: 24,
        decoration: BoxDecoration(
          // This creates the border and the rounded "pill" shape
          border: Border.all(color: Colors.white, width: 1),
          borderRadius: BorderRadius.circular(
            15,
          ), // Half of height for perfect curves
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                image,
                height: 15,
                width: 15,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            Text(
              language,
              style: kTextStyle.copyWith(
                fontSize: 16,
              ), // Small font for 24px height
            ),
          ],
        ),
      ),
    );
  }
}
