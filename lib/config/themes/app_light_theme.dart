import 'package:flutter/material.dart';
import 'package:studyapp/config/themes/sub_theme_data_mixin.dart';

const Color primaryLightColorLight = Color(0xFF3c62);
const Color primaryColorLight = Color(0xFF993c61);
const Color mainTextColorLight = Color.fromARGB(1000, 40, 200, 50);

class LightTheme with SubThemeData {
  buildLightTheme() {
    final ThemeData systemLightTheme = ThemeData.light();
    return systemLightTheme.copyWith(
        textTheme: getTextTheme().apply(
          bodyColor: mainTextColorLight,
          displayColor: mainTextColorLight,
        ),
        iconTheme: getIconTheme());
  }
}
