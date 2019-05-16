
import 'package:flutter/material.dart';
import 'package:flutter_app/data/Photo.dart';
import 'package:flutter_app/ui/picture.dart';

class Details extends StatelessWidget{
  final Photo _data;
  Details(this._data);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Expanded(
            child: Picture(_data, 0.0),
          ),
          Container(
            color: Colors.white30,
            child: Row(
              children: <Widget>[

              ],
            ),
          )
        ],
    );
  }
}