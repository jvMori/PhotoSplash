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
              borderRadius: BorderRadius.circular(5), color: Colors.black12),
          height: 350,
          margin: EdgeInsets.only(left: 0.0, right: 0.0),
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: new Column(
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
                          CircleAvatar(
                            backgroundImage:
                                NetworkImage(_data.user.profileImage.medium),
                            radius: 18,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 8.0),
                            child: Text(
                              _data.user.name,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  letterSpacing: 1),
                            ),
                          )
                        ],
                      ),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.black45,
                      size: 40,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: _data.urls.small,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              )
            ],
          )),
    );
  }
}
