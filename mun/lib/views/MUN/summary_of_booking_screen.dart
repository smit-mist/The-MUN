import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mun/views/MUN/receipt_screen.dart';
import 'package:mun/views/elements/constants.dart';
import 'package:mun/views/elements/textstyles.dart';
import 'package:mun/views/elements/widgets/logo.dart';

//TODO: Add vertical divider

class BookingSummary extends StatelessWidget {
  final List<String> fields = [
    'Name',
    'Date of Birth',
    'Age',
    'Institution',
    'City',
    'Contact Number',
    'Email Address',
    'Food Preference',
    'Accommodation',
    'Premium Availed',
  ];
  final List<String> values = [
    'Alex Jacob',
    '01-01-1997',
    '26',
    'Centre for Environmental Planning and Technology',
    'Chennai',
    '9601133475',
    'example.info@gmail.com',
    'Jain',
    'Yes',
    'Yes',
  ];
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
        height: h,
        width: w,
        color: Color(0xffECECEC),
        padding: EdgeInsets.fromLTRB(
            w * (25 / kScreenWidth), 13.0, w * (23 / kScreenWidth), 0.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Booking Summary',
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
                height: 12.05,
              ),
              Container(
                height: h * (385 / kScreenHeight),
                width: w,
                color: Colors.white,
                padding: EdgeInsets.only(
                  left: 13.0,
                  top: 12.0,
                ),
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: fields.length,
                  separatorBuilder: (context, index) => SizedBox(
                    height: 13.0,
                  ),
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Expanded(
                          child: Text(
                            fields[index],
                            style: robotoLight(
                              size: 14.0,
                            ).copyWith(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            values[index],
                            style: robotoLight(
                              size: 14.0,
                            ).copyWith(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 11.0,
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
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ReceiptScreen(),
              ),
            );
          },
          child: Container(
            height: h * (36 / kScreenHeight),
            alignment: Alignment.center,
            width: w * (185 / kScreenWidth),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3), color: kBlueShade),
            child: Text(
              'Proceed to Payment',
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
