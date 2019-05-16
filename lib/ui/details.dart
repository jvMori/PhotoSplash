import 'package:flutter/material.dart';
import 'package:flutter_app/data/Photo.dart';
import 'package:flutter_app/ui/CircularAvatar.dart';
import 'package:flutter_app/ui/picture.dart';

class Details extends StatelessWidget {
  final Photo _data;

  Details(this._data);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.network(
                  _data.urls.regular,
                  fit: BoxFit.fill,
                )
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white30
              ),
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  CircularAvatar(_data, 20.0, 0.0)
                ],
              ),
            )
          ],
        )
        ),
      );
  }
}

//Column(
//children: <Widget>[
//Expanded(
//child: Container(
//height: 300,
//child: Picture(_data, 0.0, 0.0),
//)
//),
//Container(
//padding: EdgeInsets.all(8.0),
//decoration: BoxDecoration(
//color: Colors.white30,
//),
//child: Row(
//children: <Widget>[
//CircularAvatar(_data, 15.0, 0.0)
//],
//),
//)
//],
//);
