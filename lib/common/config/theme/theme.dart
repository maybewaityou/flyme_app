/// 主题
import 'package:flutter/material.dart';

enum AppTheme { blueLight, blueDark, greenLight, greenDark }

const _blue = Colors.blue;
final _darkBlue = Colors.blue[700];
const _green = Colors.green;
final _darkGreen = Colors.green[700];

Map<AppTheme, ThemeData> appThemeData = {
  AppTheme.blueLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: _blue,
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      buttonColor: _blue,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: _blue,
      backgroundColor: _blue,
    ),
  ),
  AppTheme.blueDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: _darkBlue,
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.normal,
      buttonColor: _darkBlue,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: _darkBlue,
      backgroundColor: _darkBlue,
    ),
  ),
  AppTheme.greenLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: _green,
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      buttonColor: _green,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: _green,
      backgroundColor: _green,
    ),
  ),
  AppTheme.greenDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: _darkGreen,
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.normal,
      buttonColor: _darkGreen,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: _darkGreen,
      backgroundColor: _darkGreen,
    ),
  ),
};
