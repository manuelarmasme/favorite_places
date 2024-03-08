import 'dart:io';

import 'package:favorite_places/models/place.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//this is the class that uses the function into the provider

class UserPlacesNotifier extends StateNotifier<List<Place>> {
  //constructor
  UserPlacesNotifier() : super(const []);

  void addPlace(String title, File image) {
    final newPlace = Place(title: title, image: image);

    state = [newPlace, ...state];
  }
}

//THIS is the provider
final userPlacesProvider = StateNotifierProvider<UserPlacesNotifier, List<Place>>(
  (ref) => UserPlacesNotifier(),
);
