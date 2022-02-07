import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  String id;
  String name;
  String email;
  String urlimage;

  UserModel({this.id, this.name, this.email, this.urlimage});

  UserModel.fromSnapshot(FirebaseUser currentUserModel)
      : id = currentUserModel.uid,
        name = currentUserModel.displayName,
        email = currentUserModel.email,
        urlimage = currentUserModel.photoUrl;

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "email": email,
      "urlimage": urlimage,
    };
  }
}
