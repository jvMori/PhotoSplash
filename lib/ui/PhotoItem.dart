import 'package:flutter/material.dart';
import 'package:flutter_app/data/Photo.dart';
import 'package:transparent_image/transparent_image.dart';

class PhotoItem extends StatelessWidget {
  final Photo _data;

  PhotoItem(this._data);

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.black12),
          height: 350,
          padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.more_horiz,
                        color: Colors.black45,
                        size: 40,
                      ),
                      Text("Jv Mori",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.black45,
                    size: 40,
                  ),
                ],
              ),
              Expanded(
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: _data.urls.small,
                  height: 250,
                  fit: BoxFit.fitWidth,
                ),
              )
            ],
          )),
    );
  }
}
