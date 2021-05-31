import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mun/views/elements/constants.dart';
import 'package:mun/views/elements/textstyles.dart';
import 'package:mun/views/elements/widgets/logo.dart';
import 'package:mun/views/home/home_screen.dart';

class ReceiptScreen extends StatelessWidget {
  int reviewForFuture = 1;
  int reviewForRecom = 1;
  int hearAboutUs = 1;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
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
                        height: h * (500 / kScreenHeight),
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
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, 'home');
                          },
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Container(),
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: -25,
        title: Container(
          width: w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: kIconShade,
                    size: 32,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  MUNLogo(),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: w * (345 / kScreenWidth),
                padding: const EdgeInsets.only(right: 25.0),
                child: Divider(
                  height: 0.01,
                  thickness: 1,
                  color: Colors.black.withOpacity(0.3),
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(
        height: h,
        color: Color(0xffE5E5E5),
        width: w,
        padding: EdgeInsets.fromLTRB(
          w * (25 / kScreenWidth),
          13.0,
          w * (23 / kScreenWidth),
          0.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Receipt',
                style: robotoLight(
                  size: 18.0,
                ).copyWith(
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 8.0,
                child: Divider(
                  height: 0.01,
                  thickness: 1,
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
              Container(
                height: h * (172 / kScreenHeight),
                width: w,
                child: Row(
                  children: [
                    Container(
                      width: w * (105 / kScreenWidth),
                      height: h * (172 / kScreenHeight),
                      padding: EdgeInsets.fromLTRB(
                        6.0,
                        h * (40 / kScreenHeight),
                        5.0,
                        h * (35.95 / kScreenHeight),
                      ),
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      width: w * (205 / kScreenWidth),
                      height: h * (172 / kScreenHeight),
                      color: Color(0xFFF8F8F8),
                      padding: EdgeInsets.only(
                        left: 10.0,
                        top: 7.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'UCL Model United Nations',
                            style: robotoRegular(
                              size: 14.0,
                              color: Colors.black,
                            ).copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                            child: Divider(
                              height: 0.01,
                              thickness: 1,
                              color: Colors.black.withOpacity(0.3),
                            ),
                          ),
                          Text(
                            'United Nations',
                            style: robotoRegular(
                              size: 12.0,
                              color: Colors.black,
                            ).copyWith(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            'Human Rights Committee*',
                            style: robotoRegular(
                              size: 12.0,
                              color: Colors.black,
                            ).copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Change Committee',
                            style: robotoLight(
                              size: 10.0,
                              color: kBlueShade,
                            ).copyWith(
                              fontWeight: FontWeight.w300,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          SizedBox(
                            height: 7.0,
                            child: Divider(
                              height: 0.01,
                              thickness: 1,
                              color: Colors.black.withOpacity(0.3),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Zydus School',
                                style: robotoLight(
                                  size: 12.0,
                                  color: Colors.black,
                                ).copyWith(
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              // SizedBox(
                              //   width: 8.0,
                              // ),
                              // Expanded(
                              //   child: Divider(
                              //     height: 1,
                              //     thickness: 1,
                              //     color: Colors.black.withOpacity(0.3),
                              //   ),
                              // ),
                              SizedBox(
                                width: 54.0,
                              ),
                              Text(
                                'View in ',
                                style:
                                    robotoLight(size: 10.0, color: Colors.black)
                                        .copyWith(
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                'Maps',
                                style: robotoRegular(
                                  size: 10.0,
                                  color: kBlueShade,
                                ).copyWith(
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7.0,
                            child: Divider(
                              height: 0.01,
                              thickness: 1,
                              color: Colors.black.withOpacity(0.3),
                            ),
                          ),
                          Text(
                            '10 a.m. - 5 p.m.',
                            style: robotoLight(
                              size: 12.0,
                              color: Colors.black,
                            ).copyWith(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          Text(
                            'October 13-14,2021',
                            style: robotoLight(
                              size: 12.0,
                              color: Colors.black,
                            ).copyWith(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            '*Further details have been communicated via the submitted E-mail',
                            style: robotoRegular(
                              size: 10.0,
                              color: Color(0xFFA1A1A1),
                            ).copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.05,
              ),
              Row(
                children: [
                  Text(
                    'Your Booking has been ',
                    style: robotoRegular(
                      size: 14.0,
                    ).copyWith(
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    'Confirmed',
                    style: robotoRegular(
                      size: 14.0,
                    ).copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Row(
                children: [
                  Text(
                    'Booking Id: ',
                    style: robotoRegular(
                      size: 14.0,
                    ).copyWith(
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    'WAS202113452',
                    style: robotoRegular(
                      size: 14.0,
                    ).copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: h * (25 / kScreenHeight),
              ),
              Text(
                'Booking Details',
                style: robotoLight(
                  size: 14.0,
                ).copyWith(
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 9.0,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Email:',
                          style: robotoLight(
                            size: 12.0,
                          ).copyWith(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          width: w * (86 / kScreenWidth),
                        ),
                        Expanded(
                          child: Text(
                            'alexjacob@gmail.com',
                            style: robotoLight(
                              size: 12.0,
                              color: kBlueShade,
                            ).copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 11.0,
                    ),
                    Row(
                      children: [
                        Text(
                          'MUN:',
                          style: robotoLight(
                            size: 12.0,
                          ).copyWith(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          width: w * (90 / kScreenWidth),
                        ),
                        Expanded(
                          child: Text(
                            'World Archive Simulation',
                            style: robotoLight(
                              color: kBlueShade,
                              size: 12.0,
                            ).copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 11.0,
                    ),
                    Row(
                      children: [
                        Text(
                          'Committee:',
                          style: robotoLight(
                            size: 12.0,
                          ).copyWith(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          width: w * (57 / kScreenWidth),
                        ),
                        Expanded(
                          child: Text(
                            'United Nations Security Council',
                            style: robotoLight(
                              size: 12.0,
                              color: kBlueShade,
                            ).copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 11.0,
                    ),
                    Row(
                      children: [
                        Text(
                          'Venue:',
                          style: robotoLight(
                            size: 12.0,
                          ).copyWith(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          width: w * (84 / kScreenWidth),
                        ),
                        Expanded(
                          child: Text(
                            '4572 Wilson Avenue, Garland, Ahmedabad, Gujarat 380015',
                            style: robotoLight(
                              size: 12.0,
                              color: kBlueShade,
                            ).copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 11.0,
                    ),
                    Row(
                      children: [
                        Text(
                          'Payment Mode:',
                          style: robotoLight(
                            size: 12.0,
                          ).copyWith(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          width: w * (38 / kScreenWidth),
                        ),
                        Expanded(
                          child: Text(
                            'MasterCard',
                            style: robotoLight(
                              size: 12.0,
                              color: kBlueShade,
                            ).copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.04,
              ),
              Container(
                height: h * (120 / kScreenHeight),
                width: w,
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 13.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Cost of MUN',
                            style: robotoLight(
                              size: 10.0,
                            ).copyWith(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Text(
                          'INR 4000',
                          style: robotoLight(
                            size: 10.0,
                            color: kBlueShade,
                          ).copyWith(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Accommodation Charges',
                            style: robotoLight(
                              size: 10.0,
                            ).copyWith(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Text(
                          'INR 4000',
                          style: robotoLight(
                            size: 10.0,
                            color: kBlueShade,
                          ).copyWith(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Premium Charges',
                            style: robotoLight(
                              size: 10.0,
                            ).copyWith(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Text(
                          'INR 4000',
                          style: robotoLight(
                            size: 10.0,
                            color: kBlueShade,
                          ).copyWith(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Taxes',
                            style: robotoLight(
                              size: 10.0,
                            ).copyWith(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Text(
                          'INR 4000',
                          style: robotoLight(
                            size: 10.0,
                            color: kBlueShade,
                          ).copyWith(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 7.0,
                      child: Divider(
                        height: 0.01,
                        thickness: 1,
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Total Amount',
                            style: robotoLight(
                              size: 18.0,
                            ).copyWith(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Text(
                          'INR 4000',
                          style: robotoLight(
                            size: 16.0,
                            color: kBlueShade,
                          ).copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.04,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: h * (70 / kScreenHeight),
        width: w,
        alignment: Alignment.centerRight,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              spreadRadius: 8,
              blurRadius: 10,
              offset: Offset(0, -2),
              color: kIconShade,
            ),
          ],
          color: Colors.white,
        ),
        padding: EdgeInsets.only(bottom: 20, left: 25, right: 25),
        child: GestureDetector(
          onTap: () {
            getTheDialogForReview();
          },
          child: Container(
            height: h * (36 / kScreenHeight),
            alignment: Alignment.center,
            width: w * (129 / kScreenWidth),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3), color: kBlueShade),
            child: Text(
              'Back to Home',
              style: robotoLight(
                size: 18.0,
                color: Colors.white,
              ).copyWith(
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
