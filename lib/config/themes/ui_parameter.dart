import 'package:flutter/material.dart';

class UIParameters {
  static bool isDarkMode(BuildContext conxtext) {
    return Theme.of(conxtext).brightness == Brightness.dark;
  }
}
