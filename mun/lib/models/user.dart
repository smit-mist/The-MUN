import 'mun.dart';

class User {
  String name = "", email="", mobileNo="";
  DateTime dob = DateTime.now();

  String getName(){
    return name;
  }
  String getEmail(){
    return email;
  }
  String getMobileNo(){
    return mobileNo;
  }
  DateTime getDOB(){
    return dob;
  }

}

