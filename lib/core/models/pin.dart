import 'package:cloud_firestore/cloud_firestore.dart';

class Pin {
    final String userId;
    final double lat;
    final double lng;
    final String trackId;
    final String trackName;
    final String artist;
    final String albumArtUrl;
    final DateTime updatedAt;

    Pin({
      required this.userId,
      required this.lat,
      required this.lng,
      required this.trackId,
      required this.trackName,
      required this.artist,
      required this.albumArtUrl,
      required this.updatedAt,
    });

    // converts raw Firestore map -> Pin
    factory Pin.fromMap(Map<String, dynamic> map) {
      return Pin(
        userId: map['userId'],
        lat: map['lat'],
        lng: map['lng'],
        trackId: map['trackId'],
        trackName: map['trackName'],
        artist: map['artist'],
        albumArtUrl: map['albumArtUrl'],
        updatedAt: (map['updatedAt'] as Timestamp).toDate() // type assert Firestore's Timestamp, then cast to Datetime
      );
    }

    // converts Pin -> raw map for Firestore
    Map<String, dynamic> toMap() => {
      'userId': userId,
      'lat': lat,
      'lng': lng,
      'trackId': trackId,
      'trackName': trackName,
      'artist': artist,
      'albumArtUrl': albumArtUrl,
      'updatedAt': Timestamp.fromDate(updatedAt),
      
    };
  }