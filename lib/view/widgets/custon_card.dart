import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Color cusColor;
  final Widget? customCardChild;
  final VoidCallback? onPressed;

  CustomCard({
    this.cusColor = const Color(0xff1d1f33),
    this.customCardChild,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onPressed,
        child: Container(
          margin:  EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: cusColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: customCardChild,
        ),
      );
}
