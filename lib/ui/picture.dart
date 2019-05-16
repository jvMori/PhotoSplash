import 'package:flutter/material.dart';
import 'package:flutter_app/data/Photo.dart';
import 'package:transparent_image/transparent_image.dart';

class Picture extends StatelessWidget{
  final Photo _data;
  final num _borderRadius;
  Picture(this._data, this._borderRadius);
  @override
  Widget build(BuildContext context) {
    return  Material(
      borderRadius: BorderRadius.circular(_borderRadius),
      elevation: 3,
      child: FadeInImage.memoryNetwork(
        placeholder: kTransparentImage,
        image: _data.urls.small,
        fit: BoxFit.cover,
      ),
    );
  }
}