import 'package:flutter/material.dart';
import 'package:s_rocks/res/style/app_colors.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  const CustomTextButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: WidgetStatePropertyAll(0.0),
        foregroundColor: WidgetStatePropertyAll(AppColors.black),

        backgroundColor: WidgetStatePropertyAll(AppColors.white),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }
}
