import 'package:soundmap/core/models/pin.dart';

abstract class MapRepository {

  Future<void> removePin(String userId);
  Future<void> publishPin(Pin pin);
  Stream<List<Pin>> nearbyPins(double lat, double lng, double radiusMetres);

}