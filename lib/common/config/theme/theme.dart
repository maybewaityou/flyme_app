/// 主题
import 'package:flutter/material.dart';

import 'palette.dart';

enum AppTheme { blueLight, blueDark, greenLight, greenDark }

Map<AppTheme, ThemeData> appThemeData = {
  AppTheme.blueLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: blue,
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      buttonColor: blue,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: blue,
      backgroundColor: blue,
    ),
  ),
  AppTheme.blueDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: darkBlue,
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.normal,
      buttonColor: darkBlue,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: darkBlue,
      backgroundColor: darkBlue,
    ),
  ),
  AppTheme.greenLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: green,
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      buttonColor: green,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: green,
      backgroundColor: green,
    ),
  ),
  AppTheme.greenDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: darkGreen,
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.normal,
      buttonColor: darkGreen,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: darkGreen,
      backgroundColor: darkGreen,
    ),
  ),
};
