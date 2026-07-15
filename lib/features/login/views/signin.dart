import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intern_app/core/constant.dart';
import 'package:intern_app/features/login/views/welcome_page.dart';
import 'package:intern_app/features/login/widgets/custom_header.dart';
import 'package:intern_app/features/login/widgets/custom_phonefeild.dart';
import 'package:intern_app/features/login/widgets/custom_textfeild.dart';
import 'package:intern_app/features/onboarding/widgets/custom_button.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomHeader(icon: Icon(Icons.arrow_back_ios_new), text: Text("Login to Wikala")),
          CustomPhoneTextField(controller: phoneController, label: "Phone Number *"),
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
           
           
           Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forget Password?",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        height:1.4,
                        color: kprimarycolor,
                      ),
                    ),
                  ),
                ),
          CustomBtn(color: kprimarycolor,title: "Login",),
          Line("Don’t have an account?", " |Sign up"),
        ],
      ),
    );
  }
}