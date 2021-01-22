import 'package:flutter/material.dart';
import 'package:mun/views/booking_mun/extra_details_screen.dart';

class AboutCommittteeScreen extends StatefulWidget {
  @override
  _AboutCommittteeScreenState createState() => _AboutCommittteeScreenState();
}

class _AboutCommittteeScreenState extends State<AboutCommittteeScreen> {
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
              style: TextStyle(
                fontFamily: 'Helvetica',
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
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
                  style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
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
                  style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 30.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
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
                    style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
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
