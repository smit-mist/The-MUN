import 'dart:ui' as ui;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mun/views/MUN/select_committee_screen.dart';
import 'package:mun/views/elements/constants.dart';
import 'package:mun/views/home/all_mun_screen.dart';
import 'package:mun/views/home/home_screen.dart';
import 'package:mun/views/home/user_profile_screen.dart';

class HomeTabBar extends StatefulWidget {
  @override
  _HomeTabBarState createState() => _HomeTabBarState();
}

class _HomeTabBarState extends State<HomeTabBar> {
  int index = 1;
  List body = [
    HomeScreen(),
    AllMun(),

    SelectCommitteeScreen(), // this is for testing purpose
    UserProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    void getTheDialog() {
      showDialog(

          context: context,
          builder: (_) => new AlertDialog(
            insetPadding: EdgeInsets.all(0),
            shape: RoundedRectangleBorder(

                borderRadius:
                BorderRadius.all(
                    Radius.circular(10.0))),
            content: Builder(
              builder: (context) {
                // Get available height and width of the build area of this widget. Make a choice depending on the size.

                return BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),

                  child: SizedBox(
                    height: h,width: w,
                    child: Container(

                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      height: h,
                      width: w,
                      child: AllMun(),

                      decoration: BoxDecoration(

                      ),
                    ),
                  ),
                );
              },
            ),
          )
      );
    }

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
                    getTheDialog();
                    //   index = 2;
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
                      color: index == 4 ? kBlueShade : kGreyShade,
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
