class Photo {
  num likes;
  String description;
  User user;
  Urls urls;

  Photo({this.likes, this.description, this.user, this.urls});

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
        likes: json["likes"],
        description: json["description"],
        user: json["user"],
        urls: json["urls"]);
  }
}

class User {
  String id;
  String username;
  String name;
  String portfolioUrl;
  ProfileImage profileImage;

  User(
      {this.id,
      this.username,
      this.name,
      this.portfolioUrl,
      this.profileImage});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json["id"],
        username: json["username"],
        name: json["name"],
        portfolioUrl: json["portfolio_url"],
        profileImage: json["profile_image"]);
  }
}

class ProfileImage {
  String medium;

  ProfileImage({this.medium});

  factory ProfileImage.fromJson(Map<String, dynamic> json) {
    return ProfileImage(
      medium: json["medium"],
    );
  }
}

class Urls {
  String small;
  String full;

  Urls({this.small, this.full});

  factory Urls.fromJson(Map<String, dynamic> json) {
    return Urls(
      small: json["small"],
      full: json["full"],
    );
  }
}