import 'package:flutter/material.dart';


class skipButton extends StatelessWidget {
   final void Function()? onTap;

  const skipButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TextButton(
          onPressed:onTap ,
          child: Text(
            "Skip",
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
              decoration: TextDecoration.underline,
              decorationColor: Colors.grey,
              decorationThickness: 2,
            ),
          ),
        ),
      ],
    );
  }
}

class photo extends StatelessWidget {
  final Text text1;
  final Text text2;

  const photo({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('images/onboarding.png'),
        Spacer(),
        text1,
        Spacer(),
        text2,
      ],
    );
  }
}

