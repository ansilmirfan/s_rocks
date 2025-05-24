import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppColorScheme {
  static final ColorScheme appColorScheme = ColorScheme(
    brightness: Brightness.dark,

    /// Primary colors
    primary: Color(0xFFA90140),
    onPrimary: AppColors.white,

    /// Secondary colors
    secondary: Color(0xFF550120),
    onSecondary: AppColors.white,

    /// Surface
    surface: AppColors.black,
    onSurface: AppColors.white,

    /// Error for validation
    error: Colors.redAccent,
    onError: AppColors.white,

    /// Tertiary buttons,cards
    tertiary: AppColors.darkGrey,
    onTertiary: AppColors.white,
  );
}
