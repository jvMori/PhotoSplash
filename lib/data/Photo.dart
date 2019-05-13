class Photo {
  num likes;
  String description;
  User user;
  String photoUrl;
  Urls urls;

  Photo(this.likes, this.description, this.user, this.photoUrl, this.urls);

}

class User {
  String id;
  String username;
  String name;
  String portfolioUrl;
  ProfileImage profileImage;
}

class ProfileImage{
  String medium;
}

class Urls{
  String small;
  String full;
}