import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intern_app/core/constant.dart';
import 'package:intern_app/features/login/widgets/custom_header.dart';
import 'package:intern_app/features/login/widgets/custom_textfeild.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHeader(
          icon: const Icon(Icons.close, color: Colors.black, size: 24),
          text: Text(
            "Welcome to Our app",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),

        CustomTextfield(
          icon: const Icon(Icons.phone),
          hintText: "Sign in with Phone Number",
        ),
        CustomTextfield(
          icon: const FaIcon(FontAwesomeIcons.google),
          hintText: "Sign in with Google",
        ),
        CustomTextfield(
          icon: const FaIcon(FontAwesomeIcons.facebook),
          hintText: "Sign in with Facebook",
        ),
        Line("Already member?", "Sign In"),
        _SignUpFooter(),
      ],
    );
  }
}

class Line extends StatelessWidget {
  final String text1;
  final String text2;
  const Line(this.text1, this.text2);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            height: 1.5,
            color: Colors.grey[500],
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          onPressed: () {
            context.go('/login');
          },
          child: Text(
            text2,
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              height: 1.5,
              color: kprimarycolor,
            ),
          ),
        ),
      ],
    );
  }
}

class _SignUpFooter extends StatelessWidget {
  const _SignUpFooter();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(
            "By continue you agree to our Terms of service ",
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              height: 1.5,
              color: Colors.grey[500],
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            " and our Privacy Policy",
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              height: 1.5,
              color: kprimarycolor,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
