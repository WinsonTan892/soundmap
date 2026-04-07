import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:soundmap/features/map/presentation/map_notifier.dart';

class MapScreen extends ConsumerWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pinsState = ref.watch(mapNotifierProvider);
    return pinsState.when(
      data: (pins) => GoogleMap(                                                                                                
      initialCameraPosition: const CameraPosition(                                                                            
        target: LatLng(51.5074, -0.1278),                                                                                     
        zoom: 14,                                                                                                             
      ),                                                                                                                      
      markers: const {},                                                                                                      
    ), 
      error: (e, _) => Center(child: Text('Error: $e')), 
      loading: () => const Center(child: CircularProgressIndicator()));
  }
}