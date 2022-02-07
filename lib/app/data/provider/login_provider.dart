import 'package:firebase_auth/firebase_auth.dart';
import 'package:login_firebase/app/data/model/user_model.dart';

class LoginApiClient {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

// Retorna usuário logado
  Stream<User> get onAuthStateChanged => _firebaseAuth.onAuthStateChanged
      .map((FirebaseUser currentUser) => User.fromSnapshot(currentUser));

// Criar usuário
  Future<User> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    try {
      final currentUser = (await _firebaseAuth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user;
      //Atualizando o nome do usuário
      var userUpdateInfo = UserUpdateInfo();
      userUpdateInfo.displayName = name;
      await currentUser.updateProfile(UserUpdateInfo());
      await currentUser.reload();

      return User.fromSnapshot(currentUser);
    } catch (e) {
      print(e);
      return null;
    }
  }

// Fazer login
  Future<User> signInWithEmailAndPassword(String email, String password) async {
    try {
      final currentUser = (await _firebaseAuth.signInWithEmailAndPassword(
              email: email, password: password))
          .user;

      return User.fromSnapshot(currentUser);
    } catch (e) {
      print(e);
      return null;
    }
  }

  // Fazer logoff
  signOut() {
    return _firebaseAuth.signOut();
  }
}
