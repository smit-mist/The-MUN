import 'package:mun/models/committee.dart';

class Meeting{
  String address,city;
  DateTime date;
  String description;
  int remainingSeats;
  double registrationFees;
  String imageUrl;
  List<Committee> committees = [];
}