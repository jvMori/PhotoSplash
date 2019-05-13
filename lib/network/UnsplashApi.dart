import 'dart:convert';

import 'package:flutter_app/data/Photo.dart';
import 'package:flutter_app/data/SearchPhotoResponse.dart';
import 'package:http/http.dart' as http;

class UnsplashApi{

  List<Photo> parsePhotos(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

    return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
  }
  Future<List<Photo>> fetchPhotos() async {
    final response =
    await http.get('https://jsonplaceholder.typicode.com/photos');

    return parsePhotos(response.body);
  }
}