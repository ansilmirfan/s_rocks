import 'package:flutter/material.dart';
import 'package:s_rocks/res/style/app_text_theme.dart';
import 'package:s_rocks/res/style/colors_scheme.dart';

class AppTheme {
  static ThemeData themeData = ThemeData(
    colorScheme: AppColorScheme.appColorScheme,
    textTheme: AppTextTheme.textTheme,
  );
}
