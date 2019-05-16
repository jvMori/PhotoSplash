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
                color: Color(0xFFe6e8ed)
              ),
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  CircularAvatar(_data, 15.0, 0.0),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text("By "+ _data.user.name, style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    )),
                  ),
                ],
              ),
            ),
            DetailsItem(_data.user.name, Icons.calendar_today),
            DetailsItem(_data.likes.toString() + " Likes", Icons.headset),
            DetailsItem(_data.likes.toString() + " Downloads", Icons.file_download),
            DetailsItem(_data.color, Icons.color_lens)
          ],
        )
        ),
      );
  }
}
class DetailsItem extends StatelessWidget{
  final String _text;
  final IconData _icon;

  DetailsItem(this._text, this._icon);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          Icon(_icon, size: 25,),
          Padding(
            padding: const EdgeInsets.only(left:16.0),
            child: Text(_text, style: TextStyle(
                color: Colors.black87,
                fontSize: 15
            ),),
          )
        ],
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
