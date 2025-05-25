import 'package:s_rocks/data/firebase_services.dart';
import 'package:s_rocks/models/music_service_model.dart';

class FirebaseRepository {
  final FirebaseServices _firebaseServices;
  FirebaseRepository(this._firebaseServices);
  Future<List<MusicServiceModel>> fetchAll() async {
    final result = await _firebaseServices.getAll();
    List<MusicServiceModel> data =
        result
            .map((element) => MusicServiceModel.fromMap(map: element))
            .toList();
    return data;
  }
}
