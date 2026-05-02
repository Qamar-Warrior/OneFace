import 'package:flutter/material.dart';

class SizeConfig {
  static late double screenWidth;
  static late double screenHeight;

  static void init(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    screenWidth = mediaQuery.size.width;
    screenHeight = mediaQuery.size.height;
  }

  // width based scaling
  static double w(double value) {
    return screenWidth * (value / 393);
  }

  // height based scaling
  static double h(double value) {
    return screenHeight * (value / 852);
  }
}
