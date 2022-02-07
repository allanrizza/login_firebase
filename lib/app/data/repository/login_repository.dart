import 'package:login_firebase/app/data/model/user_model.dart';
import 'package:login_firebase/app/data/provider/login_provider.dart';

class LoginRepository {
  final LoginApiClient apiClient = LoginApiClient();

  Future<UserModel> createUserWithEmailAndPassword(
      String email, String password, String name) {
    return apiClient.createUserModelWithEmailAndPassword(email, password, name);
  }

  Future<UserModel> signInWithEmailAndPassword(String email, String password) {
    return apiClient.signInWithEmailAndPassword(email, password);
  }
}
