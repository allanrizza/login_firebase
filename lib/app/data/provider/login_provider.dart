import 'package:firebase_auth/firebase_auth.dart';

class LoginApiClient {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Stream<User> get onAuthStateChanged =>
      //_firebaseAuth.onAuthStateChanged.map((FirebaseUser currentUser) => null);
}
