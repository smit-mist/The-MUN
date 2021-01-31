import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';

class Database {
  final _db = FirebaseFirestore.instance;
  Future<void> addUser(String email, String name, String uid) {
    return _db.collection('users').doc(uid).set({
      'email': email,
      'name': name,
    });
  }

  Future<void> addUserCity({String city, String uid}) {
    return _db.collection('users').doc(uid).set({
      'city':city,
    });
  }
}
