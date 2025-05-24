import 'package:flutter/material.dart';

class AppTextTheme {
  static TextTheme get textTheme => TextTheme(
    headlineLarge: _lobsterStyle(),
    headlineMedium: _lobsterStyle(),
    headlineSmall: _lobsterStyle(),
    titleLarge: _lobsterStyle(),

    // Body and labels use Syne
    titleMedium: _syneStyle(FontWeight.w600),
    titleSmall: _syneStyle(FontWeight.w600),
    bodyLarge: _syneStyle(),
    bodyMedium: _syneStyle(),
    bodySmall: _syneStyle(),
    labelLarge: _syneStyle(FontWeight.w500),
    labelMedium: _syneStyle(FontWeight.w500),
    labelSmall: _syneStyle(FontWeight.w500),
    displayLarge: _syneStyle(),
    displayMedium: _syneStyle(),
    displaySmall: _syneStyle(),
  );

  static TextStyle _lobsterStyle() {
    return TextStyle(fontFamily: 'Lobster', fontWeight: FontWeight.w400);
  }

  static TextStyle _syneStyle([FontWeight weight = FontWeight.w400]) {
    return TextStyle(fontFamily: 'Syne', fontWeight: weight);
  }
}
