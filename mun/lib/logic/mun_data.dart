import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mun/models/mun.dart';
import 'package:mun/models/committee.dart';

class MunService {
  final munReference = FirebaseFirestore.instance.collection('MUN');

  Future createMun(Mun meet, String uid) async {
    return await munReference.doc(uid).set({
      'venue': meet.venue,
      'date': meet.date,
      'registration_time': meet.registrationTime,
      'city': meet.city,
      'media': meet.imageUrls,
      'seats': meet.remainingSeats,
      'description': meet.description,
      'sheet_link': meet.sheetLink,
    });
  }

  List<Mun> munList(QuerySnapshot snapshot) {

    return snapshot.docs.map((snap) {
      Map<String, dynamic> item = snap.data();
      try{
        return Mun(
          venue: item['venue'].toString() ?? 'No Venue',
          date: item['date'].toString() ?? 'DD/MM/YYYY',
          imageUrls: item['media'] ?? [],
          sheetLink: item['sheet_link'] ?? '',
          registrationTime: item['registration_time'] ?? '',
          remainingSeats: item['seats'].toInt() ?? 0,
          description: item['description'].toString() ?? 'Nothing',
          registrationFees: item['fees'].toInt() ?? -1,
        );
      }catch(e){
        print(e.toString());
      }

    }).toList();
  }

  Stream<List<Mun>> get muns {
    return munReference.snapshots().map((event) => munList(event));
  }
}
