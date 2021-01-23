import 'package:flutter/material.dart';

import 'package:mun/views/booking_mun/about_mun_screen.dart';
import 'package:mun/views/elements/textstyles.dart';

class AllMun extends StatefulWidget {
  @override
  _AllMunState createState() => _AllMunState();
}

class _AllMunState extends State<AllMun> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        title: Text(
          'All Mun',style: boldHeading,
        ),

      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5.0,
            crossAxisSpacing: 8.0,
            childAspectRatio: 5/6,
          ),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutMunScreen(),
                  ),
                );
              },
              child: Container(
                height: h*0.1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: Colors.blue,
                      height: w * 0.4,
                      width: w*0.35,
                    ),
                    Text('MUN ${index + 1}',style:simple(16)),
                    Text('Date of MUN',style:simple(14)),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
