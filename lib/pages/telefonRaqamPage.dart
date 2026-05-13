import 'package:flutter/material.dart';
import 'package:oneface/classes/screenSizer.dart';
import 'package:oneface/classes/telefonRaqamButtons.dart';

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
          Positioned(
            top: SizeConfig.w(120),
            left: SizeConfig.w(-100),
            child: Opacity(
              opacity: 0.45,
              child: Image.asset(
                'images/backimage.png',
                height: SizeConfig.h(500),
                fit: BoxFit.contain,
                errorBuilder: (_, __, ___) => Container(
                  height: SizeConfig.h(500),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        const Color(0xFFB8D4F0),
                        const Color(0xFFD6E8FB),
                        const Color(0xFFEFF6FF),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: SizeConfig.w(24)),
                  child: Icon(
                    Icons.credit_card,
                    size: SizeConfig.w(120),
                    color: Color(0xFFADCAE8),
                  ),
                ),
              ),
            ),
          ),

          // Main content
          SafeArea(
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
                            color: Color(0xFF1A1A2E),
                            height: SizeConfig.h(1.3),
                          ),
                        ),

                        SizedBox(height: SizeConfig.h(32)),

                        //Telefon raqamini kiriting
                        Text(
                          "Telefon raqamini kiriting",
                          style: TextStyle(
                            fontSize: SizeConfig.w(13),
                            color: Color(0xFF6B7280),
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
                            color: Color(0xFF6B7280),
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
                          color: Color(0xFF9CA3AF),
                          height: SizeConfig.h(1.5),
                        ),
                      ),

                      SizedBox(height: SizeConfig.h(12)),

                      // Continue button
                      SizedBox(
                        width: double.infinity,
                        height: SizeConfig.h(52),
                        child: ElevatedButton(
                          onPressed: () {},
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
