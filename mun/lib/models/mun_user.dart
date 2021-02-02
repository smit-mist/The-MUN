import 'mun.dart';

class MUNUser {
  String name;
  String email;
  String city;
  DateTime dob;
  String uid;
  int age;
  String mobileNumber;
  bool foodPref;
  String committtee;
  String institution;

  MUNUser({
    this.uid,
    this.age,
    this.city,
    this.committtee,
    this.dob,
    this.email,
    this.foodPref,
    this.institution,
    this.mobileNumber,
    this.name,
  });
}