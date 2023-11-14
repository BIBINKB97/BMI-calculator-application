// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:bmi_calculator/config/constants.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent(IconData mars, {
    this.icon,
    this.label,
    super.key,
  });

  late final IconData? icon;
  late final String? label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80.0),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label!,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
