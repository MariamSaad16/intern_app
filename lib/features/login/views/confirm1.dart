import 'package:flutter/material.dart';
import 'package:intern_app/core/constant.dart';
import 'package:intern_app/features/login/widgets/custom_header.dart';
import 'package:intern_app/features/login/widgets/custom_phonefeild.dart';
import 'package:intern_app/features/onboarding/widgets/custom_button.dart';

class Confirm1 extends StatefulWidget {
  const Confirm1({super.key});

  @override
  State<Confirm1> createState() => _Confirm1State();
}

class _Confirm1State extends State<Confirm1> {
    final phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomHeader(icon: Icon(Icons.arrow_back_ios_new), text: Text("Enter your Number")),
          CustomPhoneTextField(controller: phoneController, label: "Phone Number *"),
          CustomBtn(color: kprimarycolor,title: "Submit",)
        ],
      ),
    );
  }
}