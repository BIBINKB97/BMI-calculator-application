import 'package:bmi_calculator/view/widgets/theme_changer_btn.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              ThemeChangeBtn(),
            ],
          ),
        ),
      ),
    );
  }
}
