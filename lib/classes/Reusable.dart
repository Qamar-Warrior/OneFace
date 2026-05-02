import 'package:flutter/material.dart';
import 'package:oneface/pages/loginPage.dart';

import '../const.dart';

class ReusableButton extends StatelessWidget {
  ReusableButton({super.key, required this.image, required this.language});
  String image = '';
  String language = '';
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.04, // responsive padding
        ),
        decoration: BoxDecoration(
          // This creates the border and the rounded "pill" shape
          border: Border.all(color: Colors.white, width: 1),
          borderRadius: BorderRadius.circular(
            15,
          ), // Half of height for perfect curves
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                image,
                height: width * 0.05,
                width: width * 0.05,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: width * 0.03),
            Text(
              language,
              style: kTextStyle, // Small font for 24px height
            ),
          ],
        ),
      ),
    );
  }
}
