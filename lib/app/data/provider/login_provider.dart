import 'package:firebase_auth/firebase_auth.dart';
import 'package:login_firebase/app/data/model/user_model.dart';

class LoginApiClient {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

// Retorna usuário logado
  Stream<UserModel> get onAuthStateChanged =>
      _firebaseAuth.onAuthStateChanged.map((FirebaseUser currentUserModel) =>
          UserModel.fromSnapshot(currentUserModel));

// Criar usuário
  Future<UserModel> createUserModelWithEmailAndPassword(
      String email, String password, String name) async {
    try {
      final currentUserModel = (await _firebaseAuth
              .createUserWithEmailAndPassword(email: email, password: password))
          .user;
      //Atualizando o nome do usuário
      var UserModelUpdateInfo = UserUpdateInfo();
      UserModelUpdateInfo.displayName = name;
      await currentUserModel.updateProfile(UserUpdateInfo());
      await currentUserModel.reload();

      return UserModel.fromSnapshot(currentUserModel);
    } catch (e) {
      print(e);
      return null;
    }
  }

// Fazer login
  Future<UserModel> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      final currentUserModel = (await _firebaseAuth.signInWithEmailAndPassword(
              email: email, password: password))
          .user;

      return UserModel.fromSnapshot(currentUserModel);
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
