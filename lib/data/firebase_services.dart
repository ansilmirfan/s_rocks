import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseServices {
  final FirebaseFirestore _firestore;
  FirebaseServices(this._firestore);
  Future<List<Map<String, dynamic>>> getAll() async {
    try {
      final querySnapshot =
          await _firestore.collection("music services").orderBy('no').get();
      List<Map<String, dynamic>> items =
          querySnapshot.docs.map((doc) {
            return doc.data();
          }).toList();
      return items;
    } catch (e) {
      log('Error from firebase : $e');
      rethrow;
    }
  }
}
