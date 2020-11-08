import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:perretes_app/clients/dogceo_client.dart';

class FotoRandom extends StatefulWidget {
  final String breed;
  
  FotoRandom({this.breed});

  @override
  _FotoRandomState createState() => _FotoRandomState();
}

class _FotoRandomState extends State<FotoRandom> {
  final DogCEOClient client = DogCEOClient();
  Future<String> _randomUrl;

  @override
  void initState() {
    super.initState();
    _reload();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String> (
      future: _randomUrl,
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        if (snapshot.connectionState == ConnectionState.done && !snapshot.hasError) {
          return Center(
            child: InkWell(
              child: Image.network(snapshot.data),
              onTap: () { _reload(); },
            )
          );
        }
        else if (snapshot.connectionState == ConnectionState.done && snapshot.hasError) {
          return Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Image.asset('images/snoopy-penalty-box.gif'),
                  Text('There was a network error'),
                  FlatButton(
                    child: Text('Try again'),
                    onPressed: () { _reload(); },
                  ),
                ],
              ),
            ),
          );
        }
        else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  
  void _reload() {
    setState(() { _randomUrl = client.loadBreedImageURL(widget.breed); });
  }
}
