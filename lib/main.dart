import 'package:flutter/material.dart';
import 'package:s_rocks/res/style/app_theme.dart';
import 'package:s_rocks/view/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: AppTheme.themeData, home: SplashScreen());
  }
}
