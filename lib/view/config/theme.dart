import 'package:bmi_calculator/view/config/colors.dart';
import 'package:flutter/material.dart';

var lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      background: lBgColor,
      onBackground: lFontColor,
      primaryContainer: lDivColor,
      onSecondaryContainer: lLabelColor,
      primary: lPrimaryColor,
    ));

var darkTheme = ThemeData(useMaterial3: true,
colorScheme: ColorScheme.light(
      background: dBgColor,
      onBackground: dFontColor,
      primaryContainer: dDivColor,
      onSecondaryContainer: dLabelColor,
      primary: dPrimaryColor,
    ));
