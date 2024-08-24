
import 'package:flutter/material.dart';

extension DarkModeCheck on BuildContext{
  bool get isDarkMode{
    return Theme.of(this).brightness== Brightness.dark;
  }

}