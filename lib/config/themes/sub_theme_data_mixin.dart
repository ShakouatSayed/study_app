import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studyapp/config/themes/app_colors.dart';

mixin SubThemeData {
  TextTheme getTextTheme() {
    return GoogleFonts.quicksandTextTheme(
      const TextTheme(
          bodyText1: TextStyle(
            fontWeight: FontWeight.w400,
          ),
          bodyText2: TextStyle(
            fontWeight: FontWeight.w400,
          )),
    );
  }

  IconThemeData getIconTheme() {
    return IconThemeData(color: onSurfaceTextColor, size: 40);
  }
}
