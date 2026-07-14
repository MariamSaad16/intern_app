import 'dart:async';

import 'package:flutter/material.dart';

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
          ),
        ),

        const SizedBox(height: 15),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text(
              "Didn't receive?",
            ),

            TextButton(

              onPressed: remainingTime == 0
                  ? () {
                      widget.onResend();
                      restartTimer();
                    }
                  : null,

              child: const Text("Resend Again"),
            ),

          ],
        )

      ],
    );
  }
}