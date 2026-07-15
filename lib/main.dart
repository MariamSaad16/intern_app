import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:intern_app/core/app_routers.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,

      builder: DevicePreview.appBuilder,

      locale: DevicePreview.locale(context),

      routerConfig: appRouter,
    );
  }
}