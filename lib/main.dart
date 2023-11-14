import 'package:bmi_calculator/config/theme.dart';
import 'package:bmi_calculator/view/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bmi calculator',
      darkTheme: lightTheme,
      theme: darkTheme,
      home: HomePage(), 
    );
  }
}
