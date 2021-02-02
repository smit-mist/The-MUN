import 'package:flutter/material.dart';
import 'package:mun/models/mun.dart';
import 'package:mun/views/booking_mun/select_committee_screen.dart';
import 'package:mun/views/elements/textstyles.dart';
import 'package:share/share.dart';

class AboutMunScreen extends StatefulWidget {
  Mun currentMun;
  AboutMunScreen({
    this.currentMun,
  });
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
              widget.currentMun.venue ?? 'ok',
              style: boldHeading,
            ),
            Text(
              widget.currentMun.date ?? 'd',
              style: simple(15),
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
          children: [
            Container(
              color: Colors.grey[200],
              margin: EdgeInsets.symmetric(horizontal: 12.0),
              width: w,
              height: h * 0.3,
              child: Image.network(
                widget.currentMun.imageUrls[0].toString(),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: h * 0.05,
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Venue :- ${widget.currentMun.venue}',
                      style: simple(16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Total Seats :- ${widget.currentMun.remainingSeats}',
                      style: simple(16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Date :- ${widget.currentMun.date}',
                      style: simple(16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Registration Starts :- ${widget.currentMun.registrationTime}',
                      style: simple(16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Fees :- ${widget.currentMun.registrationFees}',
                      style: simple(16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Description',
                      style: boldHeading,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      widget.currentMun.description,
                      style: simple(14),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                color: Colors.grey[200],
                height: h * 0.1,
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SelectCommitteeScreen(
                            currentMun: widget.currentMun,
                          ),
                        ),
                      );
                    },
                    child: Text(
                      'Select Committee',
                      style: boldHeading,
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
