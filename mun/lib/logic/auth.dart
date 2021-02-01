import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;

  Future signIn(String email, String password) async {
    try {
      final User user = (await _auth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user;
      if (user != null)
        return user;
      else
        return null;
    } on FirebaseAuthException catch (e) {
      if(e.code=='email-already-in-use'){
        //yet to implement
      }
    }
  }
}
