/// 主题
import 'package:flutter/material.dart';

enum AppTheme { blueLight, blueDark, greenLight, greenDark }

Map<AppTheme, ThemeData> appThemeData = {
  AppTheme.blueLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
  ),
  AppTheme.blueDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.blue[700],
  ),
  AppTheme.greenLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.green,
  ),
  AppTheme.greenDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.green[700],
  ),
};
