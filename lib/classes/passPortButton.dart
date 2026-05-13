import 'package:flutter/material.dart';
import 'package:oneface/classes/screenSizer.dart';

class CustomInputField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final IconData leadingIcon;
  final IconData trailingIcon;
  final VoidCallback? onTrailingTap;
  final bool readOnly;

  const CustomInputField({
    super.key,
    required this.controller,
    required this.hint,
    required this.leadingIcon,
    required this.trailingIcon,
    this.onTrailingTap,
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
          color: const Color(0xFFE5E7EB),
          width: SizeConfig.w(1.5),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
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
            color: const Color(0xFF9CA3AF),
            size: SizeConfig.w(20),
          ),
          SizedBox(width: SizeConfig.w(10)),
          Expanded(
            child: TextField(
              controller: controller,
              readOnly: readOnly,
              onTap: readOnly ? onTrailingTap : null,
              style: TextStyle(
                fontSize: SizeConfig.w(14),
                color: Color(0xFF374151),
              ),
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(
                  fontSize: SizeConfig.w(14),
                  color: Color(0xFFD1D5DB),
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero,
                isDense: true,
              ),
            ),
          ),
          GestureDetector(
            onTap: onTrailingTap,
            child: Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: const Color(0xFF3B82F6).withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                trailingIcon,
                color: const Color(0xFF3B82F6),
                size: SizeConfig.w(18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
