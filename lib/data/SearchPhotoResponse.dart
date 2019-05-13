import 'Photo.dart';

class SearchPhotoResponse{
  num totalPages;
  List<Photo> results;

  SearchPhotoResponse({this.totalPages, this.results});

  factory SearchPhotoResponse.fromJson(Map<String, dynamic> json){
    return SearchPhotoResponse(
      totalPages: json["total_pages"],
      results:  json["results"]
    );
  }
}