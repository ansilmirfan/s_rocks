import 'package:flutter/material.dart';

class AppColors {
  ///Primary color for appbar
  static Color primary = Color(0xFFA90140);

  ///Used in secondary text or unselected icon color
  static Color grey = Color(0xFF61616B);

  ///Primary text color
  static Color white = Colors.white;

  ///Main background color
  static Color black = Color(0xFF18171C);

  ///Semi-transperent color used in cards
  static Color transperent = Color(0xFF202126);

  ///Darker shade of grey used in container background
  static Color darkGrey = Color(0xFF2F2F39);

  ///Gradient in banner section
  static LinearGradient linearGradient = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [Color(0xFF550120), Color(0xFFA90140)],
  );
}
