import 'package:flutter/material.dart';
import 'package:flutter_app/data/Photo.dart';

class CircularAvatar extends StatelessWidget{
  final Photo _data;
  final num radiusSize;
  final num elevation;
  CircularAvatar(this._data, this.radiusSize, this.elevation);
  @override
  Widget build(BuildContext context) {
   return  Material(
     elevation: elevation,
     borderRadius: BorderRadius.circular(radiusSize),
     child: CircleAvatar(
       backgroundImage:
       NetworkImage(_data.user.profileImage.medium),
       radius: radiusSize,
     ),
   );
  }
}