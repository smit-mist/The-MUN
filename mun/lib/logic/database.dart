import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mun/models/meeting.dart';
List<MUN> allMuns = [];
class Database {

  final _db = FirebaseFirestore.instance;
  Future<void> addUser(String email, String name) {
    return _db.collection('users').add({
      'email': email,
      'name': name,
    });
  }

  Future<void> getMUN() async {
    await _db.collection('MUN').get().then((value) {
      value.docs.forEach((element) {
          MUN current = MUN(
            id: element.id,
            venue: element['Venue'],
        //    description: element['Description'],
          //  registrationFees: element['Fees'],
            imageUrls: element['Media'],
          //  registrationTime: element['Registration Time'],
           // sheetLink: element['Sheet link'],
            //city: element['City'],
            date: element['Date'],

          );
          allMuns.add(current);

      });

    });
    return;
  }
}
