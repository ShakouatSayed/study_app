import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studyapp/config/themes/app_dark_them.dart';
import 'package:studyapp/config/themes/app_light_theme.dart';

class ThemeController extends GetxController {
  late ThemeData _darkTheme;
  late ThemeData _lightTheme;

  @override
  void onInit() {
    initializedThemeData();
    super.onInit();
  }

  initializedThemeData() {
    _darkTheme = DarkTheme().buildDarkTheme();
    _lightTheme = LightTheme().buildLightTheme();
  }

  //get the theme data
  ThemeData get darkTheme => _darkTheme;
  ThemeData get lightTheme => _lightTheme;
}
