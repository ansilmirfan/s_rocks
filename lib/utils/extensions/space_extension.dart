import 'package:flutter/widgets.dart';

extension SpacingExtension on double {
  /// Returns a vertical SizedBox with this height
  SizedBox get h => SizedBox(height: this);

  /// Returns a horizontal SizedBox with this width
  SizedBox get w => SizedBox(width: this);
}
