import 'package:flutter/material.dart';
import 'package:oneface/classes/screenSizer.dart';
import 'package:oneface/classes/passPortButton.dart';
import 'package:oneface/const.dart';
import 'package:oneface/pages/pinCreation.dart';
import '../classes/imagePosition.dart';

class PassportScreen extends StatefulWidget {
  const PassportScreen({super.key});

  @override
  State<PassportScreen> createState() => _PassportScreenState();
}

class _PassportScreenState extends State<PassportScreen> {
  final TextEditingController _passportController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();

  @override
  void dispose() {
    _passportController.dispose();
    _dobController.dispose();
    super.dispose();
  }

  Future<void> _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(1990),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        _dobController.text =
            '${picked.day.toString().padLeft(2, '0')}.${picked.month.toString().padLeft(2, '0')}.${picked.year}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Background passport image (decorative)
          PositionedBackgroundImage(
            imagePath: 'images/backimage.png',
            top: SizeConfig.w(120),
            left: SizeConfig.w(-100),
            height: SizeConfig.h(500),
          ),

          // Main content
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
                          "Passport yoki ID-kartani\nskanerlang, "
                          "malumotlarni\nkiriting",
                          style: TextStyle(
                            fontSize: SizeConfig.w(22),
                            fontWeight: FontWeight.w700,
                            color: kRegistrationColor,
                            height: SizeConfig.h(1.3),
                          ),
                        ),

                        SizedBox(height: SizeConfig.h(32)),

                        // Passport serial label
                        Text(
                          "JShShR yoki Passport seriyasi",
                          style: TextStyle(
                            fontSize: SizeConfig.w(13),
                            color: kRegistrationColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        SizedBox(height: SizeConfig.h(8)),

                        // Passport input field
                        CustomInputField(
                          controller: _passportController,
                          hint: "Pasport malumotlarini kiriting !",
                          leadingIcon: Icons.person_outline,
                          trailingIcon: Icons.crop_free,
                          onTrailingTap: () {
                            // Open scanner
                          },
                        ),

                        SizedBox(height: SizeConfig.h(20)),

                        // Date of birth label
                        Text(
                          "Tug'ilgan kun",
                          style: TextStyle(
                            fontSize: SizeConfig.w(13),
                            color: kRegistrationColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        SizedBox(height: SizeConfig.h(8)),

                        // Date input field
                        CustomInputField(
                          controller: _dobController,
                          hint: "DD.MM.YYYY",
                          leadingIcon: Icons.person_outline,
                          trailingIcon: Icons.calendar_today_outlined,
                          onTrailingTap: _selectDate,
                          readOnly: true,
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
