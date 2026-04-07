import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';                                                                                                          
import 'package:soundmap/core/models/pin.dart';                                                                             
import 'package:soundmap/features/map/data/firestore_map_repository.dart';                                                  
import 'package:soundmap/features/map/domain/map_repository.dart';  

class MapNotifier extends AsyncNotifier<List<Pin>> {

  @override
  Future<List<Pin>> build() async{
    return [];
  }

  Future<void> loadNearbyPins(double lat, double lng) async {
    // TODO
    throw UnimplementedError();
  }
}

final mapRepositoryProvider = Provider<MapRepository>((ref) {                                                               
    return FirestoreMapRepository(FirebaseFirestore.instance);                                                                
  });
                  
// exposes the notifier's state to the UI                                                                                   
final mapNotifierProvider = AsyncNotifierProvider<MapNotifier, List<Pin>>(                                                  
  MapNotifier.new,                                                                                                          
);                                                                                                                          
         