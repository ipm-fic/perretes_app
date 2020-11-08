import 'package:flutter/material.dart';

import 'package:perretes_app/config/app_config.dart';
import 'package:perretes_app/widgets/foto_random.dart';


class FotoRandomScreen extends StatelessWidget {
  final String breed;
  FotoRandomScreen({this.breed}) : super();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${AppConfig.of(context).title} : $breed'),
      ),
      body: FotoRandom(breed: breed),
    );
  }
}
