class Photo {
  num likes;
  String description;
  User user;
  Urls urls;
  String color;

  Photo({this.likes, this.description, this.user, this.urls, this.color});

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
        likes: json["likes"],
        description: json["description"],
        user: User.fromJson(json["user"]),
        urls: Urls.fromJson(json["urls"]),
        color: json["color"]
    );
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
        profileImage: ProfileImage.fromJson(json["profile_image"])
    );
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
  String regular;

  Urls({this.small, this.full, this.regular});

  factory Urls.fromJson(Map<String, dynamic> json) {
    return Urls(
      small: json["small"],
      full: json["full"],
      regular: json["regular"]
    );
  }
}
