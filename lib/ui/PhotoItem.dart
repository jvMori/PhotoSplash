import 'package:flutter/material.dart';
import 'package:flutter_app/data/Photo.dart';
import 'package:transparent_image/transparent_image.dart';

class PhotoItem extends StatelessWidget{
  final Photo _data;

  PhotoItem(this._data);

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color.fromARGB(100, 246, 246, 246)
        ),
        padding: EdgeInsets.only(top: 8, bottom: 8),
        height: 300,
        child: new Center(
          child: FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image: _data.urls.small,
            height: 250,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}