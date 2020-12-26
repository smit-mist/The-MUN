import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 1;
  List body = [
    Container(
      color: Colors.blue,
      height: 100,
      width: 100,
    ),
    Container(
      color: Colors.orange,
      height: 100,
      width: 100,
    ),
    Container(
      color: Colors.black,
      height: 100,
      width: 100,
    ),
    Container(
      color: Colors.green,
      height: 100,
      width: 100,
    ),
    Container(
      color: Colors.red,
      height: 100,
      width: 100,
    ),
  ];
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'The MUN',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.cancel),
            onPressed: () {
              _auth.signOut();
              Navigator.popAndPushNamed(context, 'welcome');
            },
          ),
        ],
      ),
      body: body[index - 1],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            index = 3;
          });
        },
        child: Icon(
          Icons.add,
          color: index == 3 ? Colors.white : Colors.grey,
        ),
        backgroundColor: index == 3 ? Colors.blue : Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: h * 0.07,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RawMaterialButton(
                onPressed: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: index == 1 ? Colors.blue : Colors.grey,
                    ),
                    Text(
                      "About Us",
                      style: TextStyle(
                        color: index == 1 ? Colors.blue : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              RawMaterialButton(
                onPressed: () {
                  setState(() {
                    index = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.calendar_today_outlined,
                      color: index == 2 ? Colors.blue : Colors.grey,
                    ),
                    Text(
                      "Events",
                      style: TextStyle(
                        color: index == 2 ? Colors.blue : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: w * 0.05,
              ),
              RawMaterialButton(
                onPressed: () {
                  setState(() {
                    index = 4;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.contact_support_outlined,
                      color: index == 4 ? Colors.blue : Colors.grey,
                    ),
                    Text(
                      "Contact Us",
                      style: TextStyle(
                        color: index == 4 ? Colors.blue : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              RawMaterialButton(
                onPressed: () {
                  setState(() {
                    index = 5;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.account_circle_outlined,
                      color: index == 5 ? Colors.blue : Colors.grey,
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(
                        color: index == 5 ? Colors.blue : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
