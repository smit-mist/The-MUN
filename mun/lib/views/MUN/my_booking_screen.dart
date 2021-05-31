import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mun/views/MUN/summary_of_booking_screen.dart';
import 'package:mun/views/elements/constants.dart';
import 'package:mun/views/elements/textstyles.dart';
import 'package:mun/views/elements/widgets/logo.dart';

class MyBooking extends StatefulWidget {
  @override
  _MyBooking createState() => _MyBooking();
}

class _MyBooking extends State<MyBooking> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    int index = 0;
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
        color: kGreyShade,
        height: h,
        width: w,
        padding: EdgeInsets.fromLTRB(
          w * (25 / kScreenWidth),
          15.0,
          w * (20 / kScreenWidth),
          0.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Booking',
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
                      child: SvgPicture.asset(
                        'assets/icons/specific_mun_logo.svg',
                        color: kBlueShade,
                      ),
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
                            '*Further details will be communicated via Email',
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
                height: h * (30.05 / kScreenHeight),
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: Container(
                      height: h * (122.5 / kScreenHeight),
                      width: w,
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            color: index == 0 ? kBlueShade : Color(0xffC4C4C4),
                            width: 2.0,
                          ),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: w * (27 / kScreenWidth),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name',
                            style: robotoLight(
                              size: 16.0,
                              color: Colors.black,
                            ).copyWith(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          Container(
                            height: h * (30 / kScreenHeight),
                            width: w * (299 / kScreenWidth),
                            color: Colors.white,
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    cursorColor: Colors.black,
                                    decoration: InputDecoration(
                                      hintStyle: robotoRegular(
                                        size: 14.0,
                                        color: kBlueShade,
                                      ).copyWith(
                                        fontWeight: FontWeight.w400,
                                      ),
                                      hintText: 'Alex',
                                      contentPadding: EdgeInsets.fromLTRB(
                                        9.0,
                                        7.0,
                                        0.0,
                                        10.0,
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(3),
                                        borderSide: BorderSide(
                                          width: 0,
                                          style: BorderStyle.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8.0,
                                  child: Container(
                                    color: Color(0xffE5E5E5),
                                  ),
                                ),
                                Expanded(
                                  child: TextField(
                                    cursorColor: Colors.black,
                                    decoration: InputDecoration(
                                      hintStyle: robotoRegular(
                                        size: 14.0,
                                        color: kBlueShade,
                                      ).copyWith(
                                        fontWeight: FontWeight.w400,
                                      ),
                                      hintText: 'Jacob',
                                      contentPadding: EdgeInsets.fromLTRB(
                                        9.0,
                                        7.0,
                                        0.0,
                                        10.0,
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(3),
                                        borderSide: BorderSide(
                                          width: 0,
                                          style: BorderStyle.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 9.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Date of Birth',
                                  style: robotoLight(
                                    size: 16.0,
                                    color: Colors.black,
                                  ).copyWith(
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: w * (60 / kScreenWidth),
                              ),
                              Expanded(
                                child: Text(
                                  'Age',
                                  style: robotoLight(
                                    size: 16.0,
                                    color: Colors.black,
                                  ).copyWith(
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7.0,
                          ),
                          Row(
                            children: [
                              Container(
                                height: h * (30 / kScreenHeight),
                                width: w * (38 / kScreenWidth),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(3.0),
                                  border: Border.all(color: kBlueShade),
                                ),
                                child: Center(
                                  child: Text(
                                    '08',
                                    style: robotoRegular(
                                      size: 14.0,
                                      color: kBlueShade,
                                    ).copyWith(
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Container(
                                height: h * (30 / kScreenHeight),
                                width: w * (38 / kScreenWidth),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                child: Center(
                                  child: Text(
                                    'MM',
                                    style: robotoRegular(
                                      size: 14.0,
                                      color: Color(0xffB6B6B6),
                                    ).copyWith(
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Container(
                                height: h * (30 / kScreenHeight),
                                width: w * (58 / kScreenWidth),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                child: Center(
                                  child: Text(
                                    'YYYY',
                                    style: robotoRegular(
                                      size: 14.0,
                                      color: Color(0xffB6B6B6),
                                    ).copyWith(
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 12.0,
                              ),
                              Container(
                                height: h * (30 / kScreenHeight),
                                width: w * (56 / kScreenWidth),
                                color: Colors.white,
                                child: TextField(
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    hintStyle: robotoRegular(
                                      size: 14.0,
                                      color: kBlueShade,
                                    ).copyWith(
                                      fontWeight: FontWeight.w400,
                                    ),
                                    contentPadding: EdgeInsets.fromLTRB(
                                      14.0,
                                      9.0,
                                      0,
                                      h * (36 / kScreenHeight),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(3),
                                      borderSide: BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * (39 / kScreenHeight),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Container(
                      height: h * (128 / kScreenHeight),
                      width: w,
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            color: index == 1 ? kBlueShade : Color(0xffC4C4C4),
                            width: 2.0,
                          ),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: w * (25 / kScreenWidth)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Institution',
                            style: robotoLight(
                              size: 16.0,
                              color: Colors.black,
                            ).copyWith(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            height: 7.0,
                          ),
                          Container(
                            color: Colors.white,
                            height: h * (30 / kScreenHeight),
                            child: TextField(
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                hintStyle: robotoRegular(
                                  size: 14.0,
                                  color: Color(0xffB6B6B6),
                                ).copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                                hintText:
                                    'Full name of the institution you study in',
                                contentPadding: EdgeInsets.fromLTRB(
                                  6.0,
                                  8.0,
                                  0.0,
                                  10.0,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 9.0,
                          ),
                          Text(
                            'City',
                            style: robotoLight(
                              size: 16.0,
                              color: Colors.black,
                            ).copyWith(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            height: 7.0,
                          ),
                          Container(
                            color: Colors.white,
                            height: h * (30 / kScreenHeight),
                            child: TextField(
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                hintStyle: robotoRegular(
                                  size: 14.0,
                                  color: Color(0xffB6B6B6),
                                ).copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                                hintText: 'Your city of residence',
                                contentPadding: EdgeInsets.fromLTRB(
                                  6.0,
                                  8.0,
                                  0.0,
                                  10.0,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * (37 / kScreenHeight),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 2;
                      });
                    },
                    child: Container(
                      height: h * (96 / kScreenHeight),
                      width: w,
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            color: index == 2 ? kBlueShade : Color(0xffC4C4C4),
                            width: 2.0,
                          ),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Contact Details',
                            style: robotoLight(
                              size: 16.0,
                            ).copyWith(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'please make sure you provide a contact',
                            style: robotoLight(
                              size: 10.0,
                            ).copyWith(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            'number an active Whatsapp account',
                            style: robotoLight(
                              size: 10.0,
                            ).copyWith(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            height: h * 0.015,
                          ),
                          Container(
                            height: h * (30 / kScreenHeight),
                            width: w * (299 / kScreenWidth),
                            color: Colors.white,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border(
                                            right: BorderSide(
                                              color:
                                                  Colors.black.withOpacity(0.3),
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          '+91',
                                          style: robotoLight(
                                            size: 14.0,
                                          ).copyWith(
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: TextField(
                                          cursorColor: Colors.black,
                                          decoration: InputDecoration(
                                            hintStyle: robotoRegular(
                                              size: 14.0,
                                              color: kBlueShade,
                                            ).copyWith(
                                              fontWeight: FontWeight.w400,
                                            ),
                                            contentPadding: EdgeInsets.fromLTRB(
                                              9.0,
                                              7.0,
                                              0.0,
                                              10.0,
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(3),
                                              borderSide: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 8.0,
                                  child: Container(
                                    color: Color(0xffE5E5E5),
                                  ),
                                ),
                                Expanded(
                                  child: TextField(
                                    cursorColor: Colors.black,
                                    decoration: InputDecoration(
                                      hintStyle: robotoRegular(
                                        size: 14.0,
                                        color: Color(0xffB6B6B6),
                                      ).copyWith(
                                        fontWeight: FontWeight.w400,
                                      ),
                                      hintText: 'Email-id',
                                      contentPadding: EdgeInsets.fromLTRB(
                                        9.0,
                                        7.0,
                                        0.0,
                                        10.0,
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(3),
                                        borderSide: BorderSide(
                                          width: 0,
                                          style: BorderStyle.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.05,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 3;
                      });
                    },
                    child: Container(
                      width: w,
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            color: index==3 ? kBlueShade : Color(0xffC4C4C4),
                            width: 2.0,
                          ),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: w * 0.025),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Food Preference',
                            style: robotoLight(
                              size: 16.0,
                            ).copyWith(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'We only provide vegetarian options',
                            style: robotoLight(
                              size: 14.0,
                            ).copyWith(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: h * (30 / kScreenHeight),
                                width: w * (56 / kScreenWidth),
                                decoration: BoxDecoration(
                                  color: kBlueShade,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(3.0)),
                                ),
                                child: Center(
                                  child: Text(
                                    'Jain',
                                    style: robotoRegular(
                                      size: 14.0,
                                      color: Colors.white,
                                    ).copyWith(
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 4.0,
                              ),
                              Container(
                                height: h * (30 / kScreenHeight),
                                width: w * (80 / kScreenWidth),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(3.0)),
                                ),
                                child: Center(
                                  child: Text(
                                    'Non-Jain',
                                    style: robotoLight(
                                      size: 14.0,
                                      color: Colors.black.withOpacity(0.3),
                                    ).copyWith(
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 18.0,
                          ),
                          Text(
                            'Accommodation',
                            style: robotoLight(
                              size: 14.0,
                            ).copyWith(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'Accommodation details will be communicated via',
                            style: robotoLight(
                              size: 10.0,
                            ).copyWith(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            'Email after booking',
                            style: robotoLight(
                              size: 10.0,
                            ).copyWith(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            height: 9.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: h * (30 / kScreenHeight),
                                width: w * (56 / kScreenWidth),
                                decoration: BoxDecoration(
                                  color: kBlueShade,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(3.0)),
                                ),
                                child: Center(
                                  child: Text(
                                    'Yes',
                                    style: robotoRegular(
                                      size: 14.0,
                                      color: Colors.white,
                                    ).copyWith(
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 4.0,
                              ),
                              Container(
                                height: h * (30 / kScreenHeight),
                                width: w * (56 / kScreenWidth),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(3.0)),
                                ),
                                child: Center(
                                  child: Text(
                                    'No',
                                    style: robotoLight(
                                      size: 14.0,
                                      color: Colors.black.withOpacity(0.3),
                                    ).copyWith(
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          Text(
                            'Avail Premium',
                            style: robotoLight(
                              size: 16.0,
                            ).copyWith(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: h * (30 / kScreenHeight),
                                width: w * (56 / kScreenWidth),
                                decoration: BoxDecoration(
                                  color: kBlueShade,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(3.0)),
                                ),
                                child: Center(
                                  child: Text(
                                    'Yes',
                                    style: robotoRegular(
                                      size: 14.0,
                                      color: Colors.white,
                                    ).copyWith(
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 4.0,
                              ),
                              Container(
                                height: h * (30 / kScreenHeight),
                                width: w * (56 / kScreenWidth),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(3.0)),
                                ),
                                child: Center(
                                  child: Text(
                                    'No',
                                    style: robotoLight(
                                      size: 14.0,
                                      color: Colors.black.withOpacity(0.3),
                                    ).copyWith(
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
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
        child: Container(
          height: h * (36 / kScreenHeight),
          alignment: Alignment.center,
          width: w * (129 / kScreenWidth),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3), color: kBlueShade),
          child: Text(
            'Book',
            style: robotoLight(
              size: 18.0,
              color: Colors.white,
            ).copyWith(
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}
