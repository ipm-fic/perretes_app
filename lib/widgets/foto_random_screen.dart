import 'package:flutter/material.dart';

import 'package:perretes_app/widgets/foto_random.dart';


String title = "Perretes App";
String breed = "sheepdog";

class FotoRandomScreen extends StatelessWidget {
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
