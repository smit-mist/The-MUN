import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:mun/models/committee.dart';

class CommitteeService {
  String id;
  CommitteeService({@required this.id});
  List<Committee> committeeList(QuerySnapshot snapshot) {
    return snapshot.docs.map((snap) {
      Map<String, dynamic> item = snap.data();
      try {
        return Committee(
          name: item['name'],
          description: item['description'],
          imageUrls: item['media'],
          remainingSeats: item['seats'],
          agenda: item['agenda'],
          suggestions: item['suggestions'],
        );
      } catch (e) {
        print(e.toString());
      }
    }).toList();
  }

  Stream<List<Committee>> get committee {
    print(id);
    return FirebaseFirestore.instance
        .collection('MUN')
        .doc(id)
        .collection('Committee')
        .snapshots()
        .map(
          (event) => committeeList(
            event,
          ),
        );
  }
}
