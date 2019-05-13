import 'Photo.dart';

class SearchPhotoResponse{
  num totalPages;
  List<Photo> results;

  SearchPhotoResponse({this.totalPages, this.results});

  factory SearchPhotoResponse.fromJson(Map<String, dynamic> json){
    var list = json["results"] as List;
    return SearchPhotoResponse(
      totalPages: json["total_pages"],
      results:  list.map((i) => Photo.fromJson(i)).toList()
    );
  }
}