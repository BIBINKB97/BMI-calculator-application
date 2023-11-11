import 'package:bmi_calculator/controller/themeController.dart';
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
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    themeController.changeTheme();
                  },
                  icon: Icon(
                    Icons.dark_mode,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.light_mode,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
