import 'package:flutter/material.dart';

import 'package:perretes_app/widgets/perretes_menu.dart';
import 'package:perretes_app/widgets/razas_list.dart';

String title = "Perretes App";

class ListaRazasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$title'),
      ),
      drawer: PerretesMenu(),
      body: RazasList(),
    );
  }
}

  
