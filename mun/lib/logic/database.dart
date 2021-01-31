import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mun/models/user.dart';

class Database {
  String passId;
  Database({this.passId});
  final _db = FirebaseFirestore.instance;
  Future<void> addUser(String email, String name, String uid) {
    return _db.collection('users').doc(uid).set({
      'email': email,
      'name': name,

    });
  }

  Future<void> addUserCity({String city, String uid}) {
    return _db.collection('users').doc(uid).update({'city':city});
  }
  MUNUser userFromFirebaseUser(DocumentSnapshot snap) {
    Map<String,dynamic>here = snap.data();
    return MUNUser(
      name: here['name'],
      email: here['email'],
      city: here['city'],
      uid: passId??'Nothing',
    );
  }
  Stream<MUNUser> get user {
    return _db.collection('users').doc(passId).snapshots().map((event) => userFromFirebaseUser(event));
  }
}
