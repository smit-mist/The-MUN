import 'package:firebase_auth/firebase_auth.dart';
import 'package:mun/models/mun_user.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;

  MUNUser userFromFirebaseUser(User user) {
    return user != null ? MUNUser(uid: user.uid, email: user.email) : null;
  }

  Future<MUNUser> signUp(String email, String password) async {
    try {
      final User user = (await _auth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user;
      return userFromFirebaseUser(user);
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    return null;
  }

  Future signIn(String email, String password) async {
    try {
      final User user = (await _auth.signInWithEmailAndPassword(
              email: email, password: password))
          .user;
      return user;
    } on FirebaseAuthException catch (e) {
      print(e);
      return null;
    }
  }
}
