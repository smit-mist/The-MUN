import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mun/models/mun.dart';


class Database {

  final _db = FirebaseFirestore.instance;
  Future<void> addUser(String email, String name) {
    return _db.collection('users').add({
      'email': email,
      'name': name,
    });
  }

}
