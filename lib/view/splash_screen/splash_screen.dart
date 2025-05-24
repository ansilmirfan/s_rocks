// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:s_rocks/utils/extensions/route_extension.dart';
import 'package:s_rocks/view/bottom_nav/bottom_nav.dart';
import 'package:s_rocks/view/widgets/svg_image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

//for controlling the animation
bool animate = false;

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        animate = true;
      });
    });
    //after 3 second delay it will navigate to bottom navigation bar page
    Future.delayed(
      Duration(seconds: 3),
      () => context.pushReplacement(BottomNav()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          duration: Duration(seconds: 2),
          //initially widget will not animate when the animate value is true the widget will animate
          opacity: animate ? 1.0 : 0.0,
          child: SvgImage(assetPath: "assets/images/icons/s-rocks.svg"),
        ),
      ),
    );
  }
}
