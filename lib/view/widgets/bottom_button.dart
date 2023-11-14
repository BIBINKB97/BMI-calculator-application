

import 'package:bmi_calculator/config/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {

  BottomButton({required this.buttonTitle,this.onTap});

  late final VoidCallback? onTap;
  late final String buttonTitle;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(buttonTitle, style: kLargeButtonTextStyle),
        ),
      ),
    );
  }
}