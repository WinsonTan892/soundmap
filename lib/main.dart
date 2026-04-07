import 'package:flutter/material.dart';                                                                                     
import 'package:flutter_riverpod/flutter_riverpod.dart';                                                                    
import 'package:soundmap/features/map/presentation/map_screen.dart';    
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ProviderScope(child: SoundMapApp()));
}

class SoundMapApp extends StatelessWidget {
  const SoundMapApp({super.key});
  
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "SoundMapApp",
      theme: ThemeData.dark(),
      home: const MapScreen(),
    );
  }
}

