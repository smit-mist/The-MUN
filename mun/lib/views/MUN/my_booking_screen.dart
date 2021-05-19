import 'package:flutter/material.dart';
import 'package:mun/views/elements/constants.dart';
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
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Container(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MUNLogo(),
              Divider(
                height: 0.01,
                thickness: 1,
                color: kGreyShade.withOpacity(0.4),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        height: h,
        width: w,
        padding: EdgeInsets.fromLTRB(h * 0.021, h * 0.021, h * 0.021, 0.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Booking',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: h * (kMediumTextSize - 0.005),
                ),
              ),
              SizedBox(
                height: h * 0.01,
              ),
              Divider(
                height: 0.01,
                thickness: 1,
                color: kGreyShade.withOpacity(0.4),
              ),
              SizedBox(
                height: h * 0.03,
              ),
              Container(
                height: h * 0.3,
                width: w,
                //padding: EdgeInsets.symmetric(horizontal: w * 0.01),
                child: Row(
                  children: [
                    Container(
                      width: w * 0.3,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: w * 0.03,
                    ),
                    Container(
                      width: w * 0.59,
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(
                        horizontal: w * 0.015,
                        vertical: h * 0.01,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'UCL Model United Nations',
                            style: TextStyle(
                              fontSize: h * 0.025,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: h * 0.015,
                            child: Divider(
                              height: 0.01,
                              thickness: 1,
                              color: kGreyShade.withOpacity(0.4),
                            ),
                          ),
                          Text(
                            'United Nations',
                            style: TextStyle(fontSize: h * 0.023),
                          ),
                          Text(
                            'Human Rights Committee*',
                            style: TextStyle(
                              fontSize: h * 0.023,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Change Committee',
                            style: TextStyle(
                              color: kBlueShade,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          SizedBox(
                            height: h * 0.015,
                            child: Divider(
                              height: 0.01,
                              thickness: 1,
                              color: kGreyShade.withOpacity(0.4),
                            ),
                          ),
                          Text(
                            'Zydus School',
                            style: TextStyle(
                              fontSize: h * 0.025,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: h * 0.015,
                            child: Divider(
                              height: 0.01,
                              thickness: 1,
                              color: kGreyShade.withOpacity(0.4),
                            ),
                          ),
                          Text(
                            '10 a.m. - 5 p.m.',
                            style: TextStyle(
                              fontSize: h * 0.023,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'October 13-14,2021',
                            style: TextStyle(
                              fontSize: h * 0.023,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '*Further details will be communicated via Email',
                            style: TextStyle(
                              fontSize: h * 0.0175,
                              color: kGreyShade,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.05,
              ),
              Container(
                height: h * 0.25,
                width: w,
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      color: kBlueShade,
                      width: w * 0.01,
                    ),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: w * 0.025),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(
                        fontSize: h * 0.035,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Row(
                      children: [
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
                              hintText: 'Alex',
                              hintStyle: TextStyle(
                                fontSize: h * 0.028,
                                color: kBlueShade,
                              ),
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
                              hintText: 'Jacob',
                              hintStyle: TextStyle(
                                fontSize: h * 0.028,
                                color: kBlueShade,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.015,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Date of Birth',
                            style: TextStyle(fontSize: h * 0.03),
                          ),
                        ),
                        SizedBox(
                          width: w * 0.05,
                        ),
                        Expanded(
                          child: Text(
                            'Age',
                            style: TextStyle(fontSize: h * 0.03),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.012,
                    ),
                    Row(
                      children: [
                        Container(
                          height: h * 0.07,
                          width: w * 0.12,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: kBlueShade),
                          ),
                          child: Center(
                            child: Text(
                              '08',
                              style: TextStyle(
                                color: kBlueShade,
                                fontSize: h * 0.03,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: w * 0.02,
                        ),
                        Container(
                          height: h * 0.07,
                          width: w * 0.12,
                          color: Colors.white,
                          child: Center(
                            child: Text(
                              'MM',
                              style: TextStyle(
                                color: kGreyShade,
                                fontSize: h * 0.03,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: w * 0.015,
                        ),
                        Container(
                          height: h * 0.07,
                          width: w * 0.18,
                          color: Colors.white,
                          child: Center(
                            child: Text(
                              'YYYY',
                              style: TextStyle(
                                color: kGreyShade,
                                fontSize: h * 0.03,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: w * 0.02,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
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
                height: h * 0.22,
                width: w,
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      color: kGreyShade,
                      width: w * 0.01,
                    ),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: w * 0.025),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Institution',
                      style: TextStyle(fontSize: h * 0.03),
                    ),
                    SizedBox(
                      height: h * 0.015,
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
                          hintText: 'Full name of the institution you study in',
                          hintStyle: TextStyle(
                            fontSize: h * 0.028,
                            color: kGreyShade,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.015,
                    ),
                    Text(
                      'City',
                      style: TextStyle(fontSize: h * 0.03),
                    ),
                    SizedBox(
                      height: h * 0.015,
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
                          hintText: 'Your city of residence',
                          hintStyle: TextStyle(
                            fontSize: h * 0.028,
                            color: kGreyShade,
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
                height: h * 0.2,
                width: w,
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      color: kGreyShade,
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
                      style: TextStyle(fontSize: h * 0.03),
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
                                fontSize: h * 0.033,
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
                              hintStyle: TextStyle(
                                fontSize: h * 0.028,
                                color: kBlueShade,
                              ),
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
                                fontSize: h * 0.028,
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
            ],
          ),
        ),
      ),
    );
  }
}
