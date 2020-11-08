import 'package:flutter/material.dart';

import 'package:perretes_app/widgets/foto_random.dart';


String title = "Perretes App";

class FotoRandomScreen extends StatelessWidget {
  final String breed;
  FotoRandomScreen({this.breed}) : super();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$title : $breed'),
      ),
      body: FotoRandom(breed: breed),
    );
  }
}
