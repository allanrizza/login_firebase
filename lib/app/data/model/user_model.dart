class User {
  String id;
  String name;
  String email;
  String urlimage;

  User(
      {required this.id,
      required this.name,
      required this.email,
      required this.urlimage});

  User.fromSnapshot(currentUser)
      : id = currentUser.uid,
        name = currentUser.displayName,
        email = currentUser.email,
        urlimage = currentUser.photoUrl;

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "email": email,
      "urlimage": urlimage,
    };
  }
}
