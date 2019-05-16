import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/data/Photo.dart';
import 'package:flutter_app/ui/CircularAvatar.dart';
import 'package:flutter_app/ui/picture.dart';
import 'package:transparent_image/transparent_image.dart';

class PhotoItem extends StatelessWidget {
  final Photo _data;

  PhotoItem(this._data);

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.white30),
          margin: EdgeInsets.only(left: 0.0, right: 0.0),
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          CircularAvatar(_data),
                          Container(
                            margin: EdgeInsets.only(left: 16.0),
                            child: Text(
                              _data.user.name,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 19,
                                  letterSpacing: 1),
                            ),
                          )
                        ],
                      ),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.black87,
                      size: 40,
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Picture(_data, 5.0)
                ],
              )
            ],
          )),
    );
  }
}
