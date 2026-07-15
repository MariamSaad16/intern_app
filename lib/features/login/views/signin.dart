import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
          SizedBox(height: 15,),
          CustomPhoneTextField(controller: phoneController, label: "Phone Number *"),
          SizedBox(height: 15,),
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
           SizedBox(height: 15,),
           
           Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      context.go('/confirm1');
                    },
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
                SizedBox(height: 15,),
          CustomBtn(color: kprimarycolor,title: "Login",width: 340,height: 45,onTap: (){
            context.go('/login');
          },),
          SizedBox(height: 15,),
          Line("Don’t have an account?", " |Sign up",onPressed: (){
            context.go('/signup');
          },),
        ],
      ),
    );
  }
}