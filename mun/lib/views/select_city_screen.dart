import 'package:flutter/material.dart';

class SelectCityScreen extends StatefulWidget {
  @override
  _SelectCityScreenState createState() => _SelectCityScreenState();
}

class _SelectCityScreenState extends State<SelectCityScreen> {
  List<String> cityNames = [
    'Ahmedabad',
    'Surat',
    'Rajkot',
    'Vadodra',
    'Chennai',
    'Hyderabad',
    'Bangalore',
    'Mumbai',
    'Delhi',
    'Kolkata',
    'Jaipur',
    'Pune',
  ];
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Pick A Region',
          style: TextStyle(
            fontFamily: 'Helvetica',
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 16.0),
        height: h,
        width: w,
        child: Column(mainAxisSize: MainAxisSize.min, children: []),
      ),
    );
  }
}
