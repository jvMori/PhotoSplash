import 'package:flutter_app/data/Photo.dart';

class PhotoListResponse {
  final List<Photo> photos;

  PhotoListResponse({this.photos});

  factory PhotoListResponse.fromJson(List<dynamic> parsedJson) {
    return new PhotoListResponse(
      photos: parsedJson.map((i)=>Photo.fromJson(i)).toList(),
    );
  }
}
