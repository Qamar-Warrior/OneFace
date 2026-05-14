import 'package:flutter/material.dart';
import 'package:oneface/classes/screenSizer.dart';
import 'package:oneface/const.dart';

class OtpInputBox extends StatelessWidget {
  final FocusNode currentFocus;
  final FocusNode? nextFocus;
  final ValueChanged<String> onChanged;

  const OtpInputBox({
    Key? key,
    required this.currentFocus,
    this.nextFocus,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.w(60),
      height: SizeConfig.h(90),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: const Color(0xFFB3E5FC),
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Center(
        child: TextField(
          focusNode: currentFocus,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          maxLength: 1,
          style: TextStyle(
            fontSize: SizeConfig.w(28),
            fontWeight: FontWeight.bold,
            color: kRegistrationColor,
          ),
          decoration: const InputDecoration(
            counterText: "",
            border: InputBorder.none,
          ),
          onChanged: (value) {
            // Auto-focus logic
            if (value.isNotEmpty && nextFocus != null) {
              nextFocus?.requestFocus();
            }
            // Pass the value back to the parent widget
            onChanged(value);
          },
        ),
      ),
    );
  }
}
