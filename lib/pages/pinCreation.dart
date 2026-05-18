import 'package:flutter/material.dart';
import 'package:oneface/classes/screenSizer.dart';
import 'package:oneface/classes/imagePosition.dart';
import 'package:oneface/pages/faceIdPage.dart';
import '../classes/otpInputbox.dart';
import '../const.dart';

class PinCreation extends StatefulWidget {
  const PinCreation({super.key});

  @override
  State<PinCreation> createState() => _PinCreationState();
}

class _PinCreationState extends State<PinCreation> {
  // 1. Create FocusNodes for each box
  final FocusNode _fn1 = FocusNode();
  final FocusNode _fn2 = FocusNode();
  final FocusNode _fn3 = FocusNode();
  final FocusNode _fn4 = FocusNode();

  @override
  void dispose() {
    // Clean up nodes when the widget is removed
    _fn1.dispose();
    _fn2.dispose();
    _fn3.dispose();
    _fn4.dispose();
    super.dispose();
  }

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
          SafeArea(
            bottom: false,
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: SizeConfig.w(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: SizeConfig.h(12)),
                        GestureDetector(
                          onTap: () => Navigator.maybePop(context),
                          child: Icon(
                            Icons.arrow_back,
                            color: kArrowColor,
                            size: SizeConfig.w(24),
                          ),
                        ),
                        SizedBox(height: SizeConfig.h(20)),

                        Text(
                          "PIN YARATING !\nMalumotlaringiz xavfsizligi\nuchun"
                          " PIN zarur !",
                          style: TextStyle(
                            fontSize: SizeConfig.w(22),
                            fontWeight: FontWeight.w700,
                            color: kRegistrationColor,
                            height: SizeConfig.h(1.3),
                          ),
                        ),
                        SizedBox(height: SizeConfig.h(50)),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              OtpInputBox(
                                currentFocus: _fn1,
                                nextFocus: _fn2,
                                onChanged: (val) => print("Box 1: $val"),
                              ),
                              OtpInputBox(
                                currentFocus: _fn2,
                                nextFocus: _fn3,
                                onChanged: (val) => print("Box 2: $val"),
                              ),
                              OtpInputBox(
                                currentFocus: _fn3,
                                nextFocus: _fn4,
                                onChanged: (val) => print("Box 3: $val"),
                              ),
                              OtpInputBox(
                                currentFocus: _fn4,
                                nextFocus: null,
                                onChanged: (val) => print("Box 4: $val"),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: SizeConfig.h(400)),

                        Container(
                          padding: const EdgeInsets.fromLTRB(20, 16, 20, 28),
                          child: Column(
                            children: [
                              Text(
                                '"Davom etish" tugmasini bosish bilan siz barcha\nshartlar va kelishuvlarga rozilik bildirasiz...',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: SizeConfig.w(12),
                                  color: kRegistrationColor,
                                  height: SizeConfig.h(1.5),
                                ),
                              ),

                              SizedBox(height: SizeConfig.h(12)),

                              // Continue button
                              SizedBox(
                                width: double.infinity,
                                height: SizeConfig.h(52),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => FaceIdPage(),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF93C5E8),
                                    foregroundColor: Colors.white,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Text(
                                    "Davom etish",
                                    style: TextStyle(
                                      fontSize: SizeConfig.w(16),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
