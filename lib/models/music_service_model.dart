import 'dart:developer';

import 'package:flutter/widgets.dart';

class MusicServiceModel {
  final String id;
  final String title;
  final String description;
  //leading icon asset path
  final String leadingIconPath;
  //background image asset path
  final String bgImagePath;
  //alignment for background image
  final Alignment alignment;

  MusicServiceModel({
    required this.id,
    required this.title,
    required this.description,
    required this.leadingIconPath,
    required this.bgImagePath,
    required this.alignment,
  });

  factory MusicServiceModel.fromMap({required Map<String, dynamic> map}) {
    log(map.toString());
    final Map<String, num> align = Map<String, num>.from(map['alignment']);
    final Alignment alignment = Alignment(
      (align["x"] as num).toDouble(),
      (align["y"] as num).toDouble(),
    );

    return MusicServiceModel(
      id: map['id'],
      title: map['title'],
      description: map["description"],
      leadingIconPath: map["leadingIconPath"],
      bgImagePath: map["bgImagePath"],
      alignment: alignment,
    );
  }
}
