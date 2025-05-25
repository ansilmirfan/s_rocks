import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:s_rocks/models/music_service_model.dart';
import 'package:s_rocks/respository/firebase_repository.dart';

class MusicServiceViewModel extends ChangeNotifier {
  final FirebaseRepository _firebaseRepository;
  MusicServiceViewModel(this._firebaseRepository);
  bool loading = false;
  List<MusicServiceModel> data = [];

  Future<void> getAll() async {
    log("called.......");
    try {
      loading = true;
      notifyListeners();
      data = await _firebaseRepository.fetchAll();
    } catch (e) {
      log(e.toString());
      loading = false;
    } finally {
      loading = false;
      notifyListeners();
    }
  }
}
