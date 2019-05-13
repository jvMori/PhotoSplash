import 'package:flutter/material.dart';

import 'data/Photo.dart';
import 'network/UnsplashApi.dart' as api;

void main() async{
  var _data = await api.UnsplashApi().fetchPhotos("water");
  List<Photo> _photos = new List<Photo>.from(_data);
  _photos.forEach((element) => debugPrint(element.description));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: getListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  List<String> getListElements() => List<String>.generate(5, (counter) => "Item");
  
   Widget getListView(){
    var listView = ListView.builder(itemBuilder: (context, index){
      return ListTile(
        leading: Icon(Icons.library_music),
        title: Text("Rhye"),
        subtitle: Text("Malibu Nights"),
        trailing: Icon(Icons.more_horiz),
        onTap: () {

        },
      );
    });
    return listView;
   }
}
