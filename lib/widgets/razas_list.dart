import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RazasList extends StatefulWidget {
  @override
  _RazasListState createState() => _RazasListState();
}

class _RazasListState extends State<RazasList> {
  List<String> _breeds = [];

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle fontStyle = TextStyle(fontSize: Theme.of(context).textTheme.headline5.fontSize);
    return ListView.builder(
      itemCount: _breeds.length,
      itemBuilder: (BuildContext context, int i) =>
        ListTile(
          title: Text(_breeds[i], style: fontStyle),
          selected: false,
        ),
      );
    }
  
  void _loadData() async {
    AssetBundle asset = DefaultAssetBundle.of(context);
    String json = await asset.loadString('data/breeds_list.json');
    Map data = jsonDecode(json);
    setState(() {
        _breeds = data['message'].keys.toList();
    });
  }
}

    
