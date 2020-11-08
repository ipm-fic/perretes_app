import 'package:flutter/material.dart';

import 'package:perretes_app/widgets/foto_random_screen.dart';

String title = "Perretes App";

class PerretesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FotoRandomScreen(),
    );
  }
}


