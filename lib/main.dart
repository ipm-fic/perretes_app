import 'package:flutter/material.dart';

String title = "Perretes App";

void main() {
  runApp(PerretesApp());
}

class PerretesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ListaRazasScreen(),
    );
  }
}


class ListaRazasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$title'),
      ),
      drawer: PerretesMenu(),
      body: Text("Cooming soon..."),
    );
  }
}

class PerretesMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget> [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage:
                AssetImage('images/avatar-snoopy.jpeg'),
            ),
            accountEmail: Text('snoopy@peanuts.com'),
            accountName: Text('Snoopy'),
          ),
          // TODO ... resto opciones del menú,
          //      P.e.: subir una foto
          AboutListTile(
            icon: Icon(Icons.info),
            applicationName: title,
            aboutBoxChildren: <Widget>[
              Text('The greatest Perretes around the world'),
            ],
          ),
        ],
      ),
    );
  }
}
  
