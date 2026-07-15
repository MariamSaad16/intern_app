import 'package:flutter/material.dart';
import 'package:intern_app/core/constant.dart';

class CustomHeader extends StatelessWidget {
  final Icon icon;
  final Widget text;

  const CustomHeader({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(height: 20),

          // Close Icon
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: icon,
            ),
          ),

          const SizedBox(height: 35),

          // Title
          Text(
            "Fruit Market",
            style: TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.bold,
              color: kprimarycolor,
            ),
          ),

          const SizedBox(height: 20),

          // Subtitle
          text,

          const SizedBox(height: 30),
        ],
      ),
    );
  }
}