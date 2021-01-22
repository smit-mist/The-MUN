import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mun/views/booking_mun/summary_of_booking_screen.dart';

class ExtraDetails extends StatefulWidget {
  @override
  _ExtraDetailsState createState() => _ExtraDetailsState();
}

class _ExtraDetailsState extends State<ExtraDetails> {
  final _auth = FirebaseAuth.instance;
  String email = "", name = "",mobileNo="";

  DateTime selectedDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1880, 8),
        lastDate: DateTime.now());
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  void initState() {
    // TODO: implement initState
    email = _auth.currentUser.email;
    name = _auth.currentUser.displayName;
    print(email);
    print(name);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.only(left: 15),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        title: Text(
          'Fill Your Details',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: Container(
        height: h * 0.9,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: h * 0.05,
                ),
                Container(
                  width: w * 0.85,
                  child: TextFormField(
                    initialValue: name??'',
                    cursorColor: Colors.black,
                    onChanged: (change) {
                      setState(() {
                        name = change;
                      });
                    },
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        fontFamily: 'Helvetica',
                        fontSize: 18,
                      ),
                      hintText: 'Name',
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.25),
                      focusColor: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.05,
                ),
                Container(
                  width: w * 0.85,
                  child: TextFormField(
                    initialValue: email??'',
                    cursorColor: Colors.black,
                    onChanged: (change) {
                      setState(() {
                        email = change;
                      });
                    },
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        fontFamily: 'Helvetica',
                        fontSize: 18,
                      ),
                      hintText: 'Email',
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.25),
                      focusColor: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.05,
                ),
                Container(
                  width: w * 0.85,
                  child: TextFormField(
                    cursorHeight: 0,

                    cursorWidth: 0,
                    onTap: () => _selectDate(context),
                    initialValue: "DOB:-"+ "${selectedDate.toLocal()}".split(' ')[0],
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.date_range,
                          color: Colors.black,
                        ),
                        onPressed: () => _selectDate(context),
                      ),
                      hintStyle: TextStyle(
                        fontFamily: 'Helvetica',
                        fontSize: 18,
                      ),
                      hintText: 'Date',
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.25),
                      focusColor: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.05,
                ),
                Container(
                  width: w * 0.85,
                  child: TextField(
                    cursorColor: Colors.black,
                    onChanged: (change) {
                      setState(() {
                        mobileNo = change;
                      });
                    },
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        fontFamily: 'Helvetica',
                        fontSize: 18,
                      ),
                      hintText: 'Mobile No',
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.25),
                      focusColor: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.25,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => SummaryOfBooking(
                            dateOfMUN: DateTime.now(),
                            dob: DateTime.now(),
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: w * 0.8,
                      height: h * 0.07,
                      child: Center(
                          child: Text(
                        'Proceed',
                        style: Theme.of(context).textTheme.headline6,
                      )),
                      color: Colors.grey.shade400,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
