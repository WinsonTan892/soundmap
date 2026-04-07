import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:soundmap/core/models/pin.dart';
import 'package:soundmap/features/map/domain/map_repository.dart';

class FirestoreMapRepository implements MapRepository{
  final FirebaseFirestore _db;
  FirestoreMapRepository(this._db);

  @override
  Stream<List<Pin>> nearbyPins(double lat, double lng, double radiusMetres) {
    // TODO: implement nearbyPins
    throw UnimplementedError();
  }

  @override
  Future<void> publishPin(Pin pin) {
    // TODO: implement publishPin
    throw UnimplementedError();
  }
  
  @override
  Future<void> removePin(String userId) {
    // TODO: implement removePin
    throw UnimplementedError();
  }
}