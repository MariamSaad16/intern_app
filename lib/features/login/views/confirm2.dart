import 'package:flutter/material.dart';
import 'package:intern_app/core/constant.dart';
import 'package:intern_app/features/login/views/welcome_page.dart';
import 'package:intern_app/features/login/widgets/custom_header.dart';
import 'package:intern_app/features/login/widgets/otp.dart';
import 'package:intern_app/features/login/widgets/timer.dart';
import 'package:intern_app/features/onboarding/widgets/custom_button.dart';

class Confirm2 extends StatefulWidget {
  const Confirm2({super.key});

  @override
  State<Confirm2> createState() => _Confirm2State();
}

class _Confirm2State extends State<Confirm2> {
  

  final c1 = TextEditingController();
  final c2 = TextEditingController();
  final c3 = TextEditingController();
  final c4 = TextEditingController();

  final f1 = FocusNode();
  final f2 = FocusNode();
  final f3 = FocusNode();
  final f4 = FocusNode();
  @override

  void dispose() {
    c1.dispose();
    c2.dispose();
    c3.dispose();
    c4.dispose();

    f1.dispose();
    f2.dispose();
    f3.dispose();
    f4.dispose();

    super.dispose();
  }
  @override

  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHeader(icon: Icon(Icons.arrow_back_ios_new), text: Text("Enter Received OTP")),
        
        Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        OTPField(
          controller: c1,
          currentFocus: f1,
          nextFocus: f2,
        ),

        OTPField(
          controller: c2,
          currentFocus: f2,
          previousFocus: f1,
          nextFocus: f3,
        ),

        OTPField(
          controller: c3,
          currentFocus: f3,
          previousFocus: f2,
          nextFocus: f4,
        ),

        OTPField(
          controller: c4,
          currentFocus: f4,
          previousFocus: f3,
        ),

      ],),
        CustomBtn(color: kprimarycolor,title: "Confirm", onTap: (){String otp =
      c1.text +
      c2.text +
      c3.text +
      c4.text;

if (otp.length != 4) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text("Please enter the complete OTP"),
    ),
  );

  return;
}
},),

        OTPTimer(onResend: () {},),

        Line("Not received?", " Send Again")
      ],
    );
  }
}