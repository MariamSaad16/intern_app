import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CustomPhoneTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Function(String)? onChanged;
  final String label;

  const CustomPhoneTextField({
    super.key,
    required this.controller,
    this.hintText = "Mobile Number",
    this.onChanged,
     required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      controller: controller,
      initialCountryCode: 'KW',
      disableLengthCheck: true,

      decoration: InputDecoration(
        hintText: hintText,

        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 18,
        ),

        filled: true,
        fillColor: Colors.white,

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Colors.green, width: 2),
        ),
      ),

      onChanged: (phone) {
        if (onChanged != null) {
          onChanged!(phone.completeNumber);
        }
      },
    );
  }
}
