import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intern_app/features/onboarding/widgets/custom_button.dart';
import 'package:intern_app/features/onboarding/widgets/custom_page.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({super.key});

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          skipButton(
            onTap: () {
              context.go('/onboarding2');
            },
          ),
          photo(
            text1: Text("E Shopping"),
            text2: Text("Explore  top organic fruits & grab them"),
          ),
          CustomBtn(title: "Next"),
        ],
      ),
    );
  }
}

class OnBoarding2 extends StatefulWidget {
  const OnBoarding2({super.key});

  @override
  State<OnBoarding2> createState() => _OnBoarding2State();
}

class _OnBoarding2State extends State<OnBoarding2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          skipButton(  onTap: () {
              context.go('/onboarding3');
            },
          
    ),
          photo(
            text1: Text("Delivery Arrived"),
            text2: Text("Order is arrived at your Place"),
          ),
          CustomBtn(title: "Next"),
        ],
      ),
    );
  }
}

class OnBoarding3 extends StatefulWidget {
  const OnBoarding3({super.key});

  @override
  State<OnBoarding3> createState() => _OnBoarding3State();
}

class _OnBoarding3State extends State<OnBoarding3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          skipButton(onTap: () {
              context.go('/welcome');
            },),
          photo(
            text1: Text("Delivery Arrived"),
            text2: Text("Order is arrived at your Place"),
          ),
          CustomBtn(title: "Get Started"),
        ],
      ),
    );
  }
}
