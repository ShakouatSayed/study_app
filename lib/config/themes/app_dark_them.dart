import 'package:flutter/material.dart';
import 'package:studyapp/config/themes/sub_theme_data_mixin.dart';

const Color primaryDarkColorDark = Color.fromARGB(0, 194, 58, 85);
const Color primaryColorDark = Color.fromARGB(255, 103, 127, 194);
const Color mainTextColorDark = Colors.greenAccent;

class DarkTheme with SubThemeData {
  ThemeData buildDarkTheme() {
    final ThemeData systemDarkTheme = ThemeData.dark();
    return systemDarkTheme.copyWith(
      iconTheme: getIconTheme(),
      textTheme: getTextTheme().apply(
        bodyColor: mainTextColorDark,
        displayColor: mainTextColorDark,
      ),
    );
  }
}
