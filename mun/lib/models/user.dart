import 'meeting.dart';

class User {
  String name = "", email="", mobileNo="";
  DateTime dob = DateTime.now();
  List<Meeting>history = [];
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
