import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:mun/views/MUN/about_mun_screen.dart';
import 'package:mun/views/elements/constants.dart';
import 'package:mun/views/home/all_mun_screen.dart';
import 'package:mun/views/home/home_screen.dart';
import 'package:mun/views/home/select_committee_screen.dart';
import '../../unused/contact_us_screen.dart';

class HomeTabBar extends StatefulWidget {
  @override
  _HomeTabBarState createState() => _HomeTabBarState();
}

class _HomeTabBarState extends State<HomeTabBar> {
  int index = 1;
  List body = [
    HomeScreen(),
    BackdropFilter(
      child: AllMun(),
      filter: ui.ImageFilter.blur(sigmaY: 10, sigmaX: 10),
    ),
    AboutMunScreen(), // this is for testing purpose
    ContactUs(),
  ];
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
                      color: index == 1 ? kBlueShade : kGreyShade,
                      size: 32,
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
                      Icons.search,
                      color: index == 2 ? kBlueShade : kGreyShade,
                      size: 32,
                    ),
                  ],
                ),
              ),
              RawMaterialButton(
                onPressed: () {
                  setState(() {
                    index = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.card_giftcard_outlined,
                      color: index == 3 ? kBlueShade : kGreyShade,
                      size: 32,
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
                      Icons.account_circle_rounded,
                      color: index == 4? kBlueShade : kGreyShade,
                      size: 32,
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
