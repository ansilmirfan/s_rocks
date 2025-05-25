import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:s_rocks/data/firebase_services.dart';
import 'package:s_rocks/respository/firebase_repository.dart';
import 'package:s_rocks/view_model/music_service_view_model.dart';

class Injector {
  static final getIt = GetIt.instance;

  static void init() {
    getIt.registerLazySingleton<FirebaseFirestore>(
      () => FirebaseFirestore.instance,
    );

    getIt.registerLazySingleton(
      () => FirebaseServices(getIt<FirebaseFirestore>()),
    );

    getIt.registerLazySingleton(
      () => FirebaseRepository(getIt<FirebaseServices>()),
    );

    getIt.registerLazySingleton(
      () => MusicServiceViewModel(getIt<FirebaseRepository>()),
    );
  }
}
