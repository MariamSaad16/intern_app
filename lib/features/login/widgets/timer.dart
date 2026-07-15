import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intern_app/core/constant.dart';

class OTPTimer extends StatefulWidget {

  final int seconds;
  final VoidCallback onResend;

  const OTPTimer({
    super.key,
    this.seconds = 60,
    required this.onResend,
  });

  @override
  State<OTPTimer> createState() => _OTPTimerState();
}

class _OTPTimerState extends State<OTPTimer> {

  late int remainingTime;
  Timer? timer;

  @override
  void initState() {
    super.initState();

    remainingTime = widget.seconds;

    startTimer();
  }

  void startTimer() {
    timer?.cancel();

    timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {

        if (remainingTime == 0) {
          timer.cancel();
        } else {
          setState(() {
            remainingTime--;
          });
        }

      },
    );
  }

  void restartTimer() {
    setState(() {
      remainingTime = widget.seconds;
    });

    startTimer();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [

        Text(
          "$remainingTime",
          style: const TextStyle(
            fontSize: 28,
              fontWeight: FontWeight.w500,
            
            height: 1.5,
           
          ),
        ),

        const SizedBox(height: 15),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text(
              "Not received?",
            ),

            TextButton(
              style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),

              onPressed: remainingTime == 0
                  ? () {
                      widget.onResend();
                      restartTimer();
                    }
                  : null,

              child: Text("Send Again",style: GoogleFonts.roboto(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              height: 1.5,
              color: kprimarycolor,
            ),),
            ),

          ],
        )

      ],
    );
  }
}