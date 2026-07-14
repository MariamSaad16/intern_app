import 'package:flutter/material.dart';
import 'package:intern_app/core/constant.dart';
import 'package:intern_app/features/login/views/welcome_page.dart';
import 'package:intern_app/features/login/widgets/custom_header.dart';
import 'package:intern_app/features/login/widgets/custom_phonefeild.dart';
import 'package:intern_app/features/login/widgets/custom_textfeild.dart';
import 'package:intern_app/features/onboarding/widgets/custom_button.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHeader(icon: Icon(Icons.arrow_back_ios_new), text: Text("Sign Up to Wikala")),
        CustomTextfield(label: "Full name *",hintText: "First and Last Name",
         validator: (value) {
        if (value == null || value.isEmpty) {
          return "Name is required";
        }
        return null;
      },),
      
        CustomPhoneTextField(controller: phoneController, label: "Phone Number with Whatsapp *"),
        CustomTextfield(label: "Password *",isPassword: true,hintText: "Password",
          validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return "Password is required";
        }
        if (value.length < 8) {
          return "Password should be more than 8 letters";
        }
        return null; // fix missing return value warning
      },),

        CustomBtn(color: kprimarycolor,title: "Sign Up",),
        Line("Already have an account?", " |Login")
      ],
    );
  }
}