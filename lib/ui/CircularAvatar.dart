import 'package:flutter/material.dart';
import 'package:flutter_app/data/Photo.dart';

class CircularAvatar extends StatelessWidget{
  final Photo _data;
  CircularAvatar(this._data);
  @override
  Widget build(BuildContext context) {
   return  Material(
     elevation: 3.0,
     borderRadius: BorderRadius.circular(18),
     child: CircleAvatar(
       backgroundImage:
       NetworkImage(_data.user.profileImage.medium),
       radius: 18,
     ),
   );
  }
}