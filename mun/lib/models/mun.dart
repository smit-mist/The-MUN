import 'package:mun/models/committee.dart';

class Mun {
  String venue, city;
  String id;
  String date, registrationTime;
  String description;
  int remainingSeats;
  int registrationFees;
  String sheetLink;
  List<String> imageUrls;

  List<Committee> committees = [];
  Mun({
    this.id,
    this.date,
    this.description = 'No description given',
    this.city = 'no city provided',
    this.committees,
    this.imageUrls,
    this.registrationFees = -1,
    this.registrationTime,
    this.remainingSeats = -1,
    this.sheetLink,
    this.venue = 'No venue provided',
  });
}
