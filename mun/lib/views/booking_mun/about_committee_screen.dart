import 'package:flutter/material.dart';
import 'package:mun/models/committee.dart';
import 'package:mun/views/booking_mun/extra_details_screen.dart';
import 'package:mun/views/elements/textstyles.dart';

class AboutCommitteeScreen extends StatefulWidget {
  Committee currentCommittee;
  AboutCommitteeScreen({this.currentCommittee});
  @override
  _AboutCommitteeScreenState createState() => _AboutCommitteeScreenState();
}

class _AboutCommitteeScreenState extends State<AboutCommitteeScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name of the Committee',
              style: boldHeading,
            ),
            Text(
              'AGENDA',
              style: TextStyle(
                fontFamily: 'Helvetica',
                fontSize: 15.0,
                color: Colors.grey,
                fontWeight: FontWeight.w100,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 40.0),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12.0),
              width: w,
              color: Colors.grey[200],
              height: 200.0,
              child: Center(
                child: Text(
                  'Trailer of the Committee',
                  style:boldHeading,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              width: w,
              height: 350.0,
              child: Center(
                child: Text(
                  'Description (A-Z)',
                  style:boldHeading,
                ),
              ),
            ),
            Container(
              color: Colors.grey[200],
              height: 80.0,
              child: Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ExtraDetails(),
                      ),
                    );
                  },
                  child: Text(
                    'Confirm Committee',
                    style:boldHeading,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
