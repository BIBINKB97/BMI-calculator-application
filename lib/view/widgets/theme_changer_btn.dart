import 'package:bmi_calculator/controller/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeChangeBtn extends StatelessWidget {
  const ThemeChangeBtn({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
          ),
          child: IconButton(
            onPressed: () {
              themeController.changeTheme();
            },
            icon: themeController.isDark.value
                ? Icon(
                    Icons.light_mode,
                  )
                : Icon(
                    Icons.dark_mode,
                  ),
          ),
        ),
      ],
    );
  }
}
