import 'package:flutter/material.dart';
import 'about_committee_screen.dart';

class SelectCommitteeScreen extends StatefulWidget {
  @override
  _SelectCommitteeScreenState createState() => _SelectCommitteeScreenState();
}

class _SelectCommitteeScreenState extends State<SelectCommitteeScreen> {
  List<String> committeeNames = [
    'ECOSOC',
    'UNGA',
    'UNSC',
    'CCC',
    'UNHRC',
    'IP',
    'IAEC',
    'UNESCO',
    'UNHSC',
  ];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Committees',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 4.0),
            child: GestureDetector(
              onTap: () {},
              child: Center(
                child: Text(
                  'See all >',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 24.0),
        child: GridView.builder(
          itemCount: 9,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0,
            childAspectRatio: (w * 0.04) / (h * 0.03),
          ),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutCommittteeScreen(),
                  ),
                );
              },
              child: Container(
                color: Colors.grey[200],
                child: Center(
                  child: Text(
                    committeeNames[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
