import 'package:flutter/material.dart';
import 'package:mun/views/select_committee_screen.dart';
import 'package:share/share.dart';

class AboutMunScreen extends StatefulWidget {
  @override
  _AboutMunScreenState createState() => _AboutMunScreenState();
}

class _AboutMunScreenState extends State<AboutMunScreen> {
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
              'Name of the MUN',
              style: TextStyle(
                fontFamily: 'Helvetica',
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Date',
              style: TextStyle(
                fontFamily: 'Helvetica',
                fontSize: 15.0,
                color: Colors.grey,
                fontWeight: FontWeight.w100,
              ),
            ),
          ],
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 4.0),
            child: IconButton(
              icon: Icon(
                Icons.share,
              ),
              onPressed: () {
                Share.share('Hey check this out');
              },
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Colors.grey[200],
              margin: EdgeInsets.symmetric(horizontal: 12.0),
              width: w,
              height: 200.0,
              child: Center(
                child: Text(
                  'TRAILER',
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
                        builder: (context) => SelectCommitteeScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Select Committee',
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
         //   SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
