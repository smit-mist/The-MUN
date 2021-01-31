import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mun/logic/database.dart';
import 'package:mun/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final Database _database = Database();

  MUNUser userFromFirebaseUser(User user) {
    return MUNUser(uid: user.uid, email: user.email);
  }

  Future<User> signUp(String email, String password) async {
    try {
      print('=============> here');
      final User user = (await _auth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user;
      return user;
    } catch (e) {
      return null;
    }
  }

  Future<User> signIn(String email, String password) async {
    try {
      final User user = (await _auth.signInWithEmailAndPassword(
              email: email, password: password))
          .user;
      return user;
    } catch (e) {
      return null;
    }
  }

  bool isUserLoggedIn() {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      return true;
    }
    return false;
  }
}
