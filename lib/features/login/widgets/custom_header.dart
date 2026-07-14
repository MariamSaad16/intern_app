import 'package:flutter/material.dart';
import 'package:intern_app/core/constant.dart';

class CustomHeader extends StatelessWidget {
  final Icon icon;
  final Text text;
  const CustomHeader({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        icon,
        Text("Fruit Market",style: 
        TextStyle(fontWeight:FontWeight.bold,fontSize: 42,color: kprimarycolor ),),
        text
      ],
    );
  }
}




