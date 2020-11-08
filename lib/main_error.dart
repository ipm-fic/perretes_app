import 'package:flutter/material.dart';

import 'package:perretes_app/app.dart';
import 'package:perretes_app/clients/dogceo_client_mock.dart';


void main() {
  runApp(PerretesApp(client: DogCEOClientMock(error: true)));
}

