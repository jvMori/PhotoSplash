import 'package:flutter/material.dart';
import 'package:flutter_app/data/Photo.dart';
import 'package:flutter_app/network/UnsplashApi.dart' as api;

import 'PhotoItem.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  Future<List<Photo>> _getPhotos() async {
    return api.UnsplashApi().fetchPopularPhotos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: makePhoto(_getPhotos()));
  }

  FutureBuilder<List<Photo>> makePhoto(Future<List<Photo>> photos) {
    return FutureBuilder<List<Photo>>(
      future: photos,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
              return PhotoItem(snapshot.data[index]);
            },
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
    );
  }
}