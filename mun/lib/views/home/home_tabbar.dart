import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mun/logic/mun_data.dart';
import 'package:mun/models/mun.dart';
import 'package:mun/views/Home/events_screen.dart';
import 'package:mun/logic/database.dart';
import 'package:mun/views/home/home_screen.dart';
import 'package:provider/provider.dart';
import 'contact_us_screen.dart';
import 'user_profile_screen.dart';

class HomeTabBar extends StatefulWidget {
  @override
  _HomeTabBarState createState() => _HomeTabBarState();
}

class _HomeTabBarState extends State<HomeTabBar> {
  int index = 1;
  List body = [
    HomeScreen(),
    EventScreen(),
    Container(
      color: Colors.black,
      height: 100,
      width: 100,
    ),
    ContactUs(),
    UserProfileScreen(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: body[index - 1],
      bottomNavigationBar: BottomAppBar(
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
                      Icons.home_outlined,
                      color: index == 1 ? Colors.blue : Colors.grey,
                    ),
                    Text(
                      "Home",
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
                      Icons.shopping_cart_outlined,
                      color: index == 2 ? Colors.blue : Colors.grey,
                    ),
                    Text(
                      "Cart",
                      style: TextStyle(
                        color: index == 2 ? Colors.blue : Colors.grey,
                      ),
                    ),
                  ],
                ),
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
                      Icons.card_giftcard_outlined,
                      color: index == 4 ? Colors.blue : Colors.grey,
                    ),
                    Text(
                      "Premium",
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
                      Icons.account_circle_rounded,
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
