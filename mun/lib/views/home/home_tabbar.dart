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
                  insetPadding: EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2.0))),
                  content: Builder(
                    builder: (context) {
                      // Get available height and width of the build area of this widget. Make a choice depending on the size.

                      return SizedBox(
                        height: h * 0.6,
                        width: w * 0.75,
                        child: Container(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Your Feedback Matters',
                                  style: robotoMedium(size: 14),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Divider(
                                  height: 1,
                                  thickness: 1,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  height: h * (0.03),
                                ),
                                SizedBox(
                                  child: Text(
                                      'How satisfied are you with the booking experience?'),
                                  width: w * 0.7,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                RatingBar.builder(
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  itemCount: 5,
                                  unratedColor: Colors.grey.withOpacity(0.2),
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 8.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.circle,
                                    color: Colors.blue,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                                SizedBox(
                                  height: h * (0.03),
                                ),
                                SizedBox(
                                  child: Text(
                                      'Would you choose us to be your MUN booking partner in the future?'),
                                  width: w * 0.7,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          reviewForFuture = 1;
                                        });
                                      },
                                      child: Container(
                                        height: 40,
                                        width: w * 0.22,
                                        color: reviewForFuture == 1
                                            ? Colors.blue
                                            : Colors.grey.withOpacity(0.2),
                                        child: Center(
                                          child: Text(
                                            'Definitely',
                                            style: TextStyle(
                                                color: reviewForFuture == 1
                                                    ? Colors.white
                                                    : Colors.blue),
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          reviewForFuture = 2;
                                        });
                                      },
                                      child: Container(
                                        width: w * 0.22,
                                        height: 40,
                                        color: reviewForFuture == 2
                                            ? Colors.blue
                                            : Colors.grey.withOpacity(0.2),
                                        child: Center(
                                          child: Text(
                                            'Maybe',
                                            style: TextStyle(
                                              color: reviewForFuture == 2
                                                  ? Colors.white
                                                  : Colors.blue,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          reviewForFuture = 3;
                                        });
                                      },
                                      child: Container(
                                        width: w * 0.22,
                                        height: 40,
                                        color: reviewForFuture == 3
                                            ? Colors.blue
                                            : Colors.grey.withOpacity(0.2),
                                        child: Center(
                                          child: Text(
                                            'Not at all',
                                            style: TextStyle(
                                              color: reviewForFuture == 3
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
                                  height: 15,
                                ),
                                SizedBox(
                                  child: Text(
                                      'Would you recommend MyNextMUN to a friend?'),
                                  width: w * 0.7,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          reviewForFuture = 1;
                                        });
                                      },
                                      child: Container(
                                        height: 40,
                                        width: w * 0.22,
                                        color: reviewForFuture == 1
                                            ? Colors.blue
                                            : Colors.grey.withOpacity(0.2),
                                        child: Center(
                                          child: Text(
                                            'Definitely',
                                            style: TextStyle(
                                                color: reviewForFuture == 1
                                                    ? Colors.white
                                                    : Colors.blue),
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          reviewForFuture = 2;
                                        });
                                      },
                                      child: Container(
                                        width: w * 0.22,
                                        height: 40,
                                        color: reviewForFuture == 2
                                            ? Colors.blue
                                            : Colors.grey.withOpacity(0.2),
                                        child: Center(
                                          child: Text(
                                            'Maybe',
                                            style: TextStyle(
                                              color: reviewForFuture == 2
                                                  ? Colors.white
                                                  : Colors.blue,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          reviewForFuture = 3;
                                        });
                                      },
                                      child: Container(
                                        width: w * 0.22,
                                        height: 40,
                                        color: reviewForFuture == 3
                                            ? Colors.blue
                                            : Colors.grey.withOpacity(0.2),
                                        child: Center(
                                          child: Text(
                                            'Not at all',
                                            style: TextStyle(
                                              color: reviewForFuture == 3
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
                                  height: 15,
                                ),
                                SizedBox(
                                  child: Text('How did you hear about us?'),
                                  width: w * 0.7,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: w * 0.42,
                                      height: 40,
                                      color: Colors.blue,
                                      child: Center(
                                        child: Text(
                                          'Google',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      width: w * 0.42,
                                      height: 40,
                                      color: Colors.grey.withOpacity(0.2),
                                      child: Center(
                                        child: Text(
                                          'Word of Mouth',
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      width: w * 0.42,
                                      height: 40,
                                      color: Colors.grey.withOpacity(0.2),
                                      child: Center(
                                        child: Text(
                                          'Social Media',
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      width: w * 0.42,
                                      height: 40,
                                      color: Colors.grey.withOpacity(0.2),
                                      child: Center(
                                        child: Text(
                                          'In person event',
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      width: w * 0.42,
                                      height: 40,
                                      color: Colors.grey.withOpacity(0.2),
                                      child: Center(
                                        child: Text(
                                          'Other',
                                          style: TextStyle(color: Colors.blue),
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
                      );
                    },
                  ),
                ),
              ));
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
                    index = 3;
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
