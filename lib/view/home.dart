import 'package:bmi_calculator/controller/themeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ElevatedButton(onPressed: () {}, child: Text("hi"))],
        ),
      ),
    );
  }
}
