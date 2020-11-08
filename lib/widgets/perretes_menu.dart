import 'package:flutter/material.dart';

String title = "Perretes App";


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
  
