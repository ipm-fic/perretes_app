import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:perretes_app/widgets/foto_random_screen.dart';


class RazasList extends StatefulWidget {
  final void Function(String breed) onBreedSelected;

  RazasList({this.onBreedSelected}) : super();
  
  @override
  _RazasListState createState() => _RazasListState();
}

class _RazasListState extends State<RazasList> {
  Future<List<String>> _breeds;
  String _selection = null;

  @override
  void initState() {
    super.initState();
    _breeds = _loadData();
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle fontStyle = TextStyle(fontSize: Theme.of(context).textTheme.headline5.fontSize);
    
    return FutureBuilder(
      future: _breeds,
      builder: (BuildContext context, AsyncSnapshot<List<String>> snapshot) {
        if (snapshot.connectionState == ConnectionState.done && !snapshot.hasError) {
          List<String> data = snapshot.data;
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext context, int i) =>
            ListTile(
              title: Text(data[i], style: fontStyle),
              selected: _selection == data[i],
              onTap: () {
                setState(() {_selection = data[i]; });
                widget.onBreedSelected(data[i]);
              },
            ),
          );
        }
        else if (snapshot.connectionState != ConnectionState.done) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        else {
          return Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Image.asset('images/snoopy-penalty-box.gif'),
                  Text('There was a error reading file'),
                ],
              ),
            ),
          );
        }
      }
    );
  }
  
  Future<List<String>> _loadData() async {
    AssetBundle asset = DefaultAssetBundle.of(context);
    String json = await asset.loadString('data/breeds_list.json');
    Map data = jsonDecode(json);
    return data['message'].keys.toList();
  }
}

    
