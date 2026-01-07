import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resevoo/costants/app_colors.dart';
import 'package:resevoo/services/navigation_services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.backgroundColor),
      home: MainNavigationView(),
    );
  }
}
