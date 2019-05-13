import 'dart:convert';

import 'package:flutter_app/data/Photo.dart';
import 'package:flutter_app/data/SearchPhotoResponse.dart';
import 'package:http/http.dart' as http;

class UnsplashApi {
  static const key =
      "d5ecf96db4cff7c7edf5d84bec15161c02d37ae37bb917457de16012ec859fe7";

  Future<List<Photo>> fetchPhotos(String query) async {
    final response = await http.get(
        'https://api.unsplash.com/search/photos?page=1&client_id=$key&query=$query');
    return new List<Photo>.from(SearchPhotoResponse.fromJson(json.decode(response.body)).results);
  }
}
