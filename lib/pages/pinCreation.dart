import 'package:flutter/material.dart';
import 'package:oneface/classes/screenSizer.dart';
import 'package:oneface/classes/imagePosition.dart';

class PinCreation extends StatefulWidget {
  const PinCreation({super.key});

  @override
  State<PinCreation> createState() => _PinCreationState();
}

class _PinCreationState extends State<PinCreation> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          PositionedBackgroundImage(
            imagePath: 'images/qulf.png',
            top: SizeConfig.w(350),
            left: SizeConfig.w(145),
            height: SizeConfig.h(350),
          ),
        ],
      ),
    );
  }
}
