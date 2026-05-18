import 'package:flutter/material.dart';
import 'package:oneface/classes/screenSizer.dart';
import 'package:oneface/classes/telefonRaqamButtons.dart';
import 'package:oneface/pages/pinCreation.dart';
import 'package:oneface/classes/imagePosition.dart';
import 'package:oneface/const.dart';

class TelefonScreen extends StatefulWidget {
  const TelefonScreen({super.key});

  @override
  State<TelefonScreen> createState() => _TelefonScreenState();
}

class _TelefonScreenState extends State<TelefonScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          // Background passport image (decorative)
          PositionedBackgroundImage(
            imagePath: 'images/backimage.png',
            top: SizeConfig.w(120),
            left: SizeConfig.w(-100),
            height: SizeConfig.h(500),
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

                        // Back button
                        GestureDetector(
                          onTap: () => Navigator.maybePop(context),
                          child: Icon(
                            Icons.arrow_back,
                            color: Color(0xFF3B82F6),
                            size: SizeConfig.w(24),
                          ),
                        ),

                        SizedBox(height: SizeConfig.h(20)),

                        // Title
                        Text(
                          "Telefon Raqamingizni\nkiriting va PIN kodni\n"
                          "tasdiqlang.",

                          style: TextStyle(
                            fontSize: SizeConfig.w(22),
                            fontWeight: FontWeight.w700,
                            color: kRegistrationColor,
                            height: SizeConfig.h(1.3),
                          ),
                        ),

                        SizedBox(height: SizeConfig.h(32)),

                        //Telefon raqamini kiriting
                        Text(
                          "Telefon raqamini kiriting",
                          style: TextStyle(
                            fontSize: SizeConfig.w(13),
                            color: kRegistrationColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        SizedBox(height: SizeConfig.h(8)),

                        // Raqam
                        CustomInputField(
                          hint: "+998(**)***-**-**",
                          leadingIcon: Icons.phone,
                        ),

                        SizedBox(height: SizeConfig.h(20)),

                        // SMS
                        Text(
                          "SMS PINni kiriting",
                          style: TextStyle(
                            fontSize: SizeConfig.w(13),
                            color: kRegistrationColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        SizedBox(height: SizeConfig.h(8)),

                        // Date input field
                        CustomInputField(
                          hint: "******",
                          leadingIcon: Icons.sms,
                        ),

                        SizedBox(height: SizeConfig.h(200)),
                      ],
                    ),
                  ),
                ),

                // Bottom section
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
                                builder: (context) => PinCreation(),
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
        ],
      ),
    );
  }
}
