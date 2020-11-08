import 'dart:async';
import 'dart:math';

import 'package:perretes_app/clients/dogceo_client.dart';

class DogCEOClientMock implements DogCEOClient {
  DogCEOClientMock({this.slow = false, this.error = false}) : assert(slow || error);

  final bool slow;
  final bool error;

  final DogCEOClient realClient = DogCEOClient();

  Future<String> loadBreedImageURL(String breed) async {
    if (slow) {
      Random rng = Random();
      await Future.delayed(
        Duration(seconds: rng.nextInt(10)),
        () => true,
      );
    }
    if (error) {
      await Future.delayed(
        Duration(seconds: 2),
        () => true,
      );
      throw '¡Error salvaje aparece!';
    }
    else {
      return realClient.loadBreedImageURL(breed);
    }
  }
}
