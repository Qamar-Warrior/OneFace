import 'package:flutter/material.dart';
import 'package:oneface/classes/screenSizer.dart';

import '../const.dart';

class CustomInputField extends StatelessWidget {
  final String hint;
  final IconData leadingIcon;
  final bool readOnly;

  const CustomInputField({
    super.key,
    required this.hint,
    required this.leadingIcon,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.h(52),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xFFFFFFFF),
          width: SizeConfig.w(1.5),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Row(
        children: [
          SizedBox(width: SizeConfig.w(14)),
          Icon(
            leadingIcon,
            color: kInnerFieldTextColor,
            size: SizeConfig.w(20),
          ),
          SizedBox(width: SizeConfig.w(10)),
          Expanded(
            child: TextField(
              readOnly: readOnly,

              style: TextStyle(
                fontSize: SizeConfig.w(14),
                color: kInnerFieldTextColor,
              ),
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(
                  fontSize: SizeConfig.w(14),
                  color: kInnerFieldTextColor,
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero,
                isDense: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
