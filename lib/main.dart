import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:s_rocks/core/dependency_injection/injector.dart';

import 'package:s_rocks/res/style/app_theme.dart';
import 'package:s_rocks/view/splash_screen/splash_screen.dart';
import 'package:s_rocks/view_model/music_service_view_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //dependency injection
  Injector.init();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Injector.getIt<MusicServiceViewModel>()..getAll(),

      child: MaterialApp(theme: AppTheme.themeData, home: SplashScreen()),
    );
  }
}
