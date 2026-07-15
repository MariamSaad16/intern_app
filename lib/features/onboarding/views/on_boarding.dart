import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intern_app/core/constant.dart';
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
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
              SizedBox(height: 10,),
            skipButton(
              onTap: () {
                context.go('/onboarding2');
              },
            ),
            SizedBox(height: 15,),
            photo(
              
              text1: Text("E Shopping",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
              text2: Text("Explore  top organic fruits & grab them"),
            ),
            SizedBox(height: 110,),
            CustomBtn(title: "Next",color: kprimarycolor,width: 190,height: 45,onTap: (){
              context.go('/onboarding2');
            },),
          ],
        ),
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
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 10,),
            skipButton(  onTap: () {
                context.go('/onboarding3');
              },
            
      ),
       SizedBox(height: 15,),
            photo(
              text1: Text("Delivery Arrived",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
              text2: Text("Order is arrived at your Place"),
            ),
            SizedBox(height: 110,),
            CustomBtn(title: "Next",color: kprimarycolor,width: 190,height: 45,onTap: (){
              context.go('/onboarding3');
            }),
          ],
        ),
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
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
             SizedBox(height: 10,),
            skipButton(onTap: () {
                context.go('/welcome');
              },),
               SizedBox(height: 15,),
            photo(
              text1: Text("Delivery Arrived",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
              text2: Text("Order is arrived at your Place"),
            ),
              SizedBox(height: 110,),
            CustomBtn(title: "Get Started",color: kprimarycolor,width: 190,height: 45,onTap: (){
               context.go('/welcome');
            }),
          ],
        ),
      ),
    );
  }
}
