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

  Future<void> addUserCity(String uid, String city) {
    return _db.collection('users').doc(uid).update({'city': city});
  }

  Future<String> getUserCity(String uid) async {
    String city;
    await _db.collection('users').doc(uid).get().then((value) {
      Map<String, dynamic> documentData = value.data();
      city = documentData['city'];
    });
    return city;
  }
}
