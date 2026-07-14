import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode currentFocus;
  final FocusNode? nextFocus;
  final FocusNode? previousFocus;

  const OTPField({
    super.key,
    required this.controller,
    required this.currentFocus,
    this.nextFocus,
    this.previousFocus,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65,
      height: 65,
      child: TextField(
        controller: controller,
        focusNode: currentFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,

        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],

        decoration: InputDecoration(
          counterText: "",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),

        onChanged: (value) {
          if (value.isNotEmpty) {
            if (nextFocus != null) {
              FocusScope.of(context).requestFocus(nextFocus);
            } else {
              currentFocus.unfocus();
            }
          } else {
            if (previousFocus != null) {
              FocusScope.of(context).requestFocus(previousFocus);
            }
          }
        },
      ),
    );
  }
}