import 'package:flutter/material.dart';

import 'package:perretes_app/widgets/foto_random.dart';
import 'package:perretes_app/widgets/perretes_menu.dart';
import 'package:perretes_app/widgets/razas_list.dart';

String title = "Perretes App";

class MasterAndDetailScreen extends StatelessWidget {
  final ValueNotifier<String> _breed = ValueNotifier<String>(null);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: PerretesMenu(),
      body: Row(
        children: <Widget>[
          Flexible(
            flex: 13,
            child: Material(
              elevation: 4.0,
              child: RazasList(
                onBreedSelected: (String breed) { _breed.value = breed; }
              ),
            ),
          ),
          Flexible(
            flex: 27,
            child: ValueListenableBuilder(
              valueListenable: _breed,
              builder: (BuildContext context, String breed, Widget child) {
                return breed == null
                ? Center(
                  child: Text(
                    'Please select a breed from the list',
                    style: Theme.of(context).textTheme.headline3,
                    textAlign: TextAlign.center,
                  )
                )
                : FotoRandom(breed: breed)
                ;
              },
            ),
          ),
        ]
      ),
    );
  }
}


