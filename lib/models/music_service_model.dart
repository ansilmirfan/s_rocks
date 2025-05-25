import 'package:flutter/widgets.dart';

class MusicServiceModel {
  final String title;
  final String description;
  //leading icon asset path
  final String leadingIconPath;
  //background image asset path
  final String bgImagePath;
  //alignment for background image
  final Alignment alignment;

  MusicServiceModel({
    required this.title,
    required this.description,
    required this.leadingIconPath,
    required this.bgImagePath,
    required this.alignment,
  });
}
