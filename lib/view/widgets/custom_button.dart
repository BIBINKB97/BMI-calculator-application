// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({required this.icon, this.onPressed});
  IconData icon;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        size: 30,
      ),
      elevation: 5.0,
      constraints: BoxConstraints.tightFor(
        width: 55.0,
        height: 55.0,
      ),
      onPressed: onPressed,
      shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(35)),
      fillColor: Color.fromARGB(255, 70, 76, 134),
    );
  }
}
