import 'package:flutter/material.dart';

import 'data/Photo.dart';
import 'network/UnsplashApi.dart' as api;

void main() async{
  List<Photo> _photos = await api.UnsplashApi().fetchPhotos("water");
  _photos.forEach((element) => debugPrint(element.description));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<Photo> photos;
  MyApp({Key key, this.photos }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page', photos: this.photos),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title, this.photos}) : super(key: key);
  final String title;
  final Future<Photo> photos;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: makePhoto(widget.photos)
    );
  }
  FutureBuilder<Photo> makePhoto(Future<Photo> photos){
    return FutureBuilder<Photo>(
      future: photos,
      builder: (context, snapshot){
        if(snapshot.hasData){
          return ListTile(
            leading: Icon(Icons.library_music),
            title: Text(snapshot.data.user.name),
            subtitle: Text(snapshot.data.description),
            trailing: Icon(Icons.more_horiz),
            onTap: () {

            },
          );
        }else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
    );
  }
}
