import 'package:bmi_calculator/config/constants.dart';
import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  SubmitButton({required this.buttonTitle, this.onTap});

  late final VoidCallback? onTap;
  late final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
        decoration: BoxDecoration(
            color: kBottomContainerColor,
            borderRadius: BorderRadius.circular(10)),
        height: kBottomContainerHeight,
        child: Center(
          child: Text(buttonTitle, style: kLargeButtonTextStyle),
        ),
      ),
    );
  }
}
