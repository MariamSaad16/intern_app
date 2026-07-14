import 'package:flutter/material.dart';
import 'package:intern_app/features/splash/splash.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(

    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),));
   
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      home: Splash(),
     
     
    );
  }
}


   
    
  

