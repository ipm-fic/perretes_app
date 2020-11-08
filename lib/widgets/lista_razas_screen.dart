import 'package:flutter/material.dart';

import 'package:perretes_app/config/app_config.dart';
import 'package:perretes_app/widgets/foto_random_screen.dart';
import 'package:perretes_app/widgets/perretes_menu.dart';
import 'package:perretes_app/widgets/razas_list.dart';


class ListaRazasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppConfig.of(context).title),
      ),
      drawer: PerretesMenu(),
      body: RazasList(
        onBreedSelected: (String breed) async {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return FotoRandomScreen(breed: breed);
              },
            ),
          );
        },
      ),
    );
  }
}

  
