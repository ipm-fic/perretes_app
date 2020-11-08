import 'package:flutter/material.dart';

import 'package:perretes_app/clients/dogceo_client.dart';
import 'package:perretes_app/config/app_config.dart';
import 'package:perretes_app/widgets/master_detail_builder.dart';


class PerretesApp extends StatelessWidget {
  final DogCEOClient client;
  final String title;
  
  PerretesApp({
      this.title = "Perretes App",
      this.client = const DogCEOClient(),
  });
  
  @override
  Widget build(BuildContext context) {
    return AppConfig(
      client: client,
      title: title,
      child: MaterialApp(
        title: title,
        theme: ThemeData(
          primarySwatch: Colors.pink,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MasterDetailBuilder(),
      ),
    );
  }
}


