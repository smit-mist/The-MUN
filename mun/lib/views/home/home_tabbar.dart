import 'dart:ui';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:mun/views/MUN/select_committee_screen.dart';
import 'package:mun/views/elements/constants.dart';
import 'package:mun/views/elements/textstyles.dart';
import 'package:mun/views/home/all_mun_screen.dart';
import 'package:mun/views/home/home_screen.dart';
import 'package:mun/views/home/user_profile_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
  int reviewForFuture = 1;
  int reviewForRecom = 1;
  int hearAboutUs = 1;

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
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                content: Builder(
                  builder: (context) {
                    // Get available height and width of the build area of this widget. Make a choice depending on the size.

                    return BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: SizedBox(
                        height: h,
                        width: w,
                        child: Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          height: h,
                          width: w,
                          child: AllMun(),
                          decoration: BoxDecoration(),
                        ),
                      ),
                    );
                  },
                ),
              ));
    }

    void getTheDialogForReview() {
      showDialog(
        context: context,
        builder: (_) => BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: new AlertDialog(
            scrollable: true,
            insetPadding: EdgeInsets.symmetric(horizontal: 25),
            contentPadding: EdgeInsets.symmetric(horizontal: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(3.0),
              ),
            ),
            content: StatefulBuilder(
              builder: (context, setState) {
                return Container(
                  height: h * (565 / kScreenHeight),
                  width: w * (325 / kScreenWidth),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: h*(500/kScreenHeight),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Your Feedback Matters',
                                style: robotoLight(size: 18),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Divider(
                                height: 1,
                                thickness: 1,
                                color: Colors.black.withOpacity(0.3),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                'How satisfied are you with the booking experience?',
                                style: robotoLight(
                                  size: 14,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 25.0),
                                child: Container(
                                  width: w * 0.9,
                                  height: 50,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Divider(
                                        height: 1,
                                        thickness: 1,
                                        color: Colors.black.withOpacity(0.3),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 45,
                                            width: 45,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: kCommitteeTileShade,
                                            ),
                                          ),
                                          Container(
                                            height: 45,
                                            width: 45,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: kCommitteeTileShade,
                                            ),
                                          ),
                                          Container(
                                            height: 45,
                                            width: 45,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: kCommitteeTileShade,
                                            ),
                                          ),
                                          Container(
                                            height: 45,
                                            width: 45,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: kCommitteeTileShade,
                                            ),
                                          ),
                                          Container(
                                            height: 45,
                                            width: 45,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: kCommitteeTileShade,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Would you choose us to be your MUN booking partner in the future?',
                                style: robotoLight(
                                  size: 14,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(
                                        () {
                                          reviewForFuture = 1;
                                        },
                                      );
                                    },
                                    child: Container(
                                      height: 30,
                                      width: 90,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        color: reviewForFuture == 1
                                            ? Colors.blue
                                            : kGreyShade,
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          '  Definitely',
                                          style: TextStyle(
                                              color: reviewForFuture == 1
                                                  ? Colors.white
                                                  : Colors.blue),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        reviewForFuture = 2;
                                      });
                                    },
                                    child: Container(
                                      height: 30,
                                      width: 90,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        color: reviewForFuture == 2
                                            ? Colors.blue
                                            : kGreyShade,
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          '  Maybe',
                                          style: TextStyle(
                                              color: reviewForFuture == 2
                                                  ? Colors.white
                                                  : Colors.blue),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        reviewForFuture = 3;
                                      });
                                    },
                                    child: Container(
                                      height: 30,
                                      width: 90,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        color: reviewForFuture == 3
                                            ? Colors.blue
                                            : kGreyShade,
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          '  Not at all',
                                          style: TextStyle(
                                              color: reviewForFuture == 3
                                                  ? Colors.white
                                                  : Colors.blue),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Would you recommend MyNextMUN to a friend?',
                                style: robotoLight(
                                  size: 14,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(
                                        () {
                                          reviewForRecom = 1;
                                        },
                                      );
                                    },
                                    child: Container(
                                      height: 30,
                                      width: 90,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        color: reviewForRecom == 1
                                            ? Colors.blue
                                            : kGreyShade,
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          '  Definitely',
                                          style: TextStyle(
                                              color: reviewForRecom == 1
                                                  ? Colors.white
                                                  : Colors.blue),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        reviewForRecom = 2;
                                      });
                                    },
                                    child: Container(
                                      height: 30,
                                      width: 90,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        color: reviewForRecom == 2
                                            ? Colors.blue
                                            : kGreyShade,
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          '  Maybe',
                                          style: TextStyle(
                                              color: reviewForRecom == 2
                                                  ? Colors.white
                                                  : Colors.blue),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        reviewForRecom = 3;
                                      });
                                    },
                                    child: Container(
                                      height: 30,
                                      width: 90,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        color: reviewForRecom == 3
                                            ? Colors.blue
                                            : kGreyShade,
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          '  Not at all',
                                          style: TextStyle(
                                            color: reviewForRecom == 3
                                                ? Colors.white
                                                : Colors.blue,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'How did you hear about us?',
                                style: robotoLight(size: 14),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        hearAboutUs = 1;
                                      });
                                    },
                                    child: Container(
                                      width: w * (187 / kScreenWidth),
                                      height: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        color: hearAboutUs == 1
                                            ? Colors.blue
                                            : kGreyShade,
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Google',
                                          style: TextStyle(
                                              color: hearAboutUs == 1
                                                  ? Colors.white
                                                  : kBlueShade),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        hearAboutUs = 2;
                                      });
                                    },
                                    child: Container(
                                      width: w * (187 / kScreenWidth),
                                      height: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        color: hearAboutUs == 2
                                            ? Colors.blue
                                            : kGreyShade,
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Word of Mouth',
                                          style: TextStyle(
                                              color: hearAboutUs == 2
                                                  ? Colors.white
                                                  : kBlueShade),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        hearAboutUs = 3;
                                      });
                                    },
                                    child: Container(
                                      width: w * (187 / kScreenWidth),
                                      height: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        color: hearAboutUs == 3
                                            ? Colors.blue
                                            : kGreyShade,
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Social Media',
                                          style: TextStyle(
                                              color: hearAboutUs == 3
                                                  ? Colors.white
                                                  : kBlueShade),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        hearAboutUs = 4;
                                      });
                                    },
                                    child: Container(
                                      width: w * (187 / kScreenWidth),
                                      height: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        color: hearAboutUs == 4
                                            ? Colors.blue
                                            : kGreyShade,
                                      ),
                                      child: Center(
                                        child: Text(
                                          'In person event',
                                          style: TextStyle(
                                              color: hearAboutUs == 4
                                                  ? Colors.white
                                                  : kBlueShade),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        hearAboutUs = 5;
                                      });
                                    },
                                    child: Container(
                                      width: w * (187 / kScreenWidth),
                                      height: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        color: hearAboutUs == 5
                                            ? Colors.blue
                                            : kGreyShade,
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Other',
                                          style: TextStyle(
                                              color: hearAboutUs == 5
                                                  ? Colors.white
                                                  : kBlueShade),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                  //    SizedBox(height: 10,),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 30,
                          width: 65,
                          decoration: BoxDecoration(
                            color: kBlueShade,
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Center(
                            child: Text(
                              'Submit',
                              style: robotoRegular(
                                size: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                );
              },
            ),
          ),
        ),
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
                    SvgPicture.asset(
                      'assets/icons/home.svg',
                      color: index == 1 ? kBlueShade : kIconShade,
                    ),
                    // Icon(
                    //   Icons.home_outlined,
                    //   color: index == 1 ? kBlueShade : kGreyShade,
                    //   size: 32,
                    // ),
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
                    SvgPicture.asset(
                      'assets/icons/search.svg',
                      color: index == 2 ? kBlueShade : kIconShade,
                    ),
                  ],
                ),
              ),
              RawMaterialButton(
                onPressed: () {
                  setState(() {
                    getTheDialogForReview();
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (_) => SelectCommitteeScreen(),
                    //   ),
                    // );
                    // Navigator is added for testing purpose
                    //  index = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/briefcase.svg',
                      color: index == 3 ? kBlueShade : kIconShade,
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
                    SvgPicture.asset(
                      'assets/icons/profile.svg',
                      color: index == 4 ? kBlueShade : kIconShade,
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
