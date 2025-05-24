import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  //extension method for navigation (push)
  void push(Widget page) {
    Navigator.of(this).push(MaterialPageRoute(builder: (context) => page));
  }

  void pushReplacement(Widget page) => Navigator.of(
    this,
  ).pushReplacement(MaterialPageRoute(builder: (context) => page));
}
