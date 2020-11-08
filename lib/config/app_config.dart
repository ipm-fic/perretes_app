import 'package:flutter/material.dart';
import 'package:perretes_app/clients/dogceo_client.dart';


class AppConfig extends InheritedWidget {
  AppConfig({
      this.client,
      this.title,
      this.breakPoint = 600,
      child
  }) : super(child: child);

  final DogCEOClient client;
  final String title;
  final int breakPoint;

  static AppConfig of(BuildContext context) =>
  context.inheritFromWidgetOfExactType(AppConfig) as AppConfig;

  @override
  bool updateShouldNotify(AppConfig old) => false;
}
