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
                          Text(
                            'Zydus School',
                            style: robotoRegular(
                              size: 12.0,
                              color: Colors.black,
                            ).copyWith(
                              fontWeight: FontWeight.w400,
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
                  Container(
                    height: h * (122.5 / kScreenHeight),
                    width: w,
                    decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(
                          color: kBlueShade,
                          width: 2.0,
                        ),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: w * (27 / kScreenWidth)),
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
                  SizedBox(
                    height: h * (39 / kScreenHeight),
                  ),
                  Container(
                    height: h * (128 / kScreenHeight),
                    width: w,
                    decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(
                          color: Colors.grey,
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
                              hintText: 'Full name of the institution you study in',
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
                  SizedBox(
                    height: h * 0.05,
                  ),
                  Container(
                    height: h * 0.19,
                    width: w,
                    decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(
                          color: Colors.grey,
                          width: w * 0.01,
                        ),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: w * 0.025),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Contact Details',
                          style: TextStyle(fontSize: h * 0.025),
                        ),
                        SizedBox(
                          height: h * 0.015,
                        ),
                        Text('please make sure you provide a contact'),
                        Text('number an active Whatsapp account'),
                        SizedBox(
                          height: h * 0.015,
                        ),
                        Row(
                          children: [
                            Container(
                              height: h * 0.07,
                              width: w * 0.1,
                              padding: EdgeInsets.symmetric(
                                  vertical: h * 0.001, horizontal: w * 0.005),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border(
                                  right: BorderSide(
                                    color: kGreyShade,
                                  ),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '+91',
                                  style: TextStyle(
                                    fontSize: h * 0.02,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 2),
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(3),
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                  filled: true,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: w * 0.02,
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 2,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(3),
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText: 'Email-id',
                                  hintStyle: TextStyle(
                                    fontSize: h * 0.02,
                                    color: kGreyShade,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h * 0.05,
                  ),
                  Container(
                    width: w,
                    decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(
                          color: Colors.grey,
                          width: w * 0.01,
                        ),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: w * 0.025),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Food Preference',
                          style: TextStyle(fontSize: h * 0.025),
                        ),
                        SizedBox(
                          height: h * 0.01,
                        ),
                        Text('We only provide vegetarian options'),
                        SizedBox(
                          height: h * 0.015,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: h * 0.06,
                              width: w * 0.2,
                              decoration: BoxDecoration(
                                color: kBlueShade,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                              ),
                              child: Center(
                                child: Text(
                                  'Jain',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: h * 0.025,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: w * 0.025,
                            ),
                            Container(
                              height: h * 0.06,
                              width: w * 0.25,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                              ),
                              child: Center(
                                child: Text(
                                  'Non-Jain',
                                  style: TextStyle(
                                    color: kGreyShade,
                                    fontSize: h * 0.025,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: h * 0.04,
                        ),
                        Text(
                          'Accommodation',
                          style: TextStyle(fontSize: h * 0.025),
                        ),
                        SizedBox(
                          height: h * 0.01,
                        ),
                        Text(
                          'Accommodation details will be communicated via',
                        ),
                        Text(
                          'Email after booking',
                        ),
                        SizedBox(
                          height: h * 0.015,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: h * 0.06,
                              width: w * 0.15,
                              decoration: BoxDecoration(
                                color: kBlueShade,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                              ),
                              child: Center(
                                child: Text(
                                  'Yes',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: h * 0.025,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: w * 0.025,
                            ),
                            Container(
                              height: h * 0.06,
                              width: w * 0.15,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                              ),
                              child: Center(
                                child: Text(
                                  'No',
                                  style: TextStyle(
                                    color: kGreyShade,
                                    fontSize: h * 0.025,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: h * 0.04,
                        ),
                        Text(
                          'Avail Premium',
                          style: TextStyle(fontSize: h * 0.025),
                        ),
                        SizedBox(
                          height: h * 0.015,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: h * 0.06,
                              width: w * 0.15,
                              decoration: BoxDecoration(
                                color: kBlueShade,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                              ),
                              child: Center(
                                child: Text(
                                  'Yes',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: h * 0.025,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: w * 0.025,
                            ),
                            Container(
                              height: h * 0.06,
                              width: w * 0.15,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                              ),
                              child: Center(
                                child: Text(
                                  'No',
                                  style: TextStyle(
                                    color: kGreyShade,
                                    fontSize: h * 0.025,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: h * 0.1,
        color: Colors.white,
        padding: EdgeInsets.only(right: w * 0.05),
        alignment: Alignment.centerRight,
        child: MaterialButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => BookingSummary(),
              ),
            );
          },
          child: Text(
            'Book',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: h * 0.03,
            ),
          ),
          color: kBlueShade,
        ),
      ),
    );
  }
}
