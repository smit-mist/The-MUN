import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mun/views/MUN/select_committee_screen.dart';
import 'package:mun/views/elements/constants.dart';
import 'package:mun/views/elements/textstyles.dart';
import 'package:mun/views/elements/widgets/logo.dart';

// TODO: Configure bottomBar
// TODO: Pass MUN as Parameter
class AboutMunScreen extends StatefulWidget {
  @override
  _AboutMunScreenState createState() => _AboutMunScreenState();
}

class _AboutMunScreenState extends State<AboutMunScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
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
        color: Color(0xFFE5E5E5),
        padding: EdgeInsets.symmetric(horizontal: w * (25 / kScreenWidth)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15.0,
              ),
              Text(
                'World Archive Simulation',
                style: robotoRegular(
                  size: 20.0,
                ).copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 5.0,
                child: Divider(
                  thickness: 1,
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 3.0,
                child: Container(
                  height: h * (114 / kScreenHeight),
                  width: w,
                  padding: EdgeInsets.only(left: 11.0, top: 8.0, right: 9.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Priority Booking Closes in',
                        style: robotoRegular(
                          size: 14.0,
                        ).copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 9.0,
                      ),
                      Container(
                        width: w,
                        height: 3.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          border: Border.all(color: kBlueShade, width: 0.25),
                        ),
                        child: Container(
                          width: w * 0.5,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(
                        height: 11.0,
                      ),
                      Text(
                        '03  22   05    06',
                        style: robotoLight(
                          size: 24.0,
                          color: kBlueShade,
                        ).copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        'DAYS    HOURS    MINUTES  SECONDS',
                        style: robotoLight(
                          size: 8.0,
                        ).copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Wrap(
                        children: [
                          Text(
                            '*Priority registration customers will enjoy',
                            style: robotoLight(
                              size: 8.0,
                              color: Color(0xffA3A3A3),
                            ).copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            ' added benefits ',
                            style: robotoLight(
                              size: 8.0,
                              color: kBlueShade,
                            ).copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'WITHOUT any added costs',
                            style: robotoLight(
                              size: 8.0,
                              color: Color(0xffA3A3A3),
                            ).copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 18.0,
              ),
              Container(
                height: h * (181 / kScreenHeight),
                width: w,
                decoration: BoxDecoration(
                  color: Color(0xFF94CCFF),
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              SizedBox(
                height: 18.0,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Faucibus id fringilla lectus mauris. Ultricies faucibus sit eget mauris at. Velit orci, mauris at et nulla pellentesque amet, sollicitudin. Vestibulum suspendisse augue et nec vel, nam. hajtkhms a. jqherk kajejoro akwjfj lawmj lawke. awkd awjkdf.awkdl',
                style: robotoLight(
                  size: 12.0,
                  color: Colors.black,
                ).copyWith(
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 11.0,
              ),
              Text(
                'Elit non ipsum id arcu. Mattis nunc, in duis quam alique. Suspendisse viverra turpis ornare turpis. Vitae erat sed purus sit feugiat eget nunc. Proin et condimentum leo quis quis in non gravida. Justo.',
                style: robotoLight(
                  size: 12.0,
                  color: Colors.black,
                ).copyWith(
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 18.0,
              ),
              Card(
                elevation: 3.0,
                child: Container(
                  padding: EdgeInsets.only(
                    left: 11.0,
                    right: 11.0,
                  ),
                  height: h * (200 / kScreenHeight),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 11.0,
                              ),
                              SvgPicture.asset(
                                'assets/icons/calendar.svg',
                                color: kBlueShade,
                                height: 24.0,
                                width: 24.0,
                              ),
                              SizedBox(
                                height: 11.0,
                              ),
                              SvgPicture.asset(
                                'assets/icons/vacancy.svg',
                                color: kBlueShade,
                                height: 21.0,
                                width: 25.0,
                              ),
                              SizedBox(
                                height: 11.0,
                              ),
                              SvgPicture.asset(
                                'assets/icons/clock.svg',
                                color: kBlueShade,
                                height: 20.0,
                                width: 20.0,
                              ),
                              SizedBox(
                                height: 11.0,
                              ),
                              SvgPicture.asset(
                                'assets/icons/location.svg',
                                color: kBlueShade,
                                height: 19.14,
                                width: 15.31,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 11.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 11.0,
                              ),
                              Text(
                                'October 13-14, 2021',
                                style:
                                    robotoLight(size: 14.0, color: Colors.black)
                                        .copyWith(
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                '50 Seats left',
                                style:
                                    robotoLight(size: 14.0, color: Colors.black)
                                        .copyWith(
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                '10:00 AM - 5:00 PM',
                                style:
                                    robotoLight(size: 14.0, color: Colors.black)
                                        .copyWith(
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Container(
                                width: w * (250/ kScreenWidth),
                                child: Row(
                                  children: [
                                    Text(
                                      'Zydus School',
                                      style: robotoLight(
                                              size: 14.0, color: Colors.black)
                                          .copyWith(
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Expanded(
                                      child: Divider(
                                        height: 1,
                                        thickness: 1,
                                        color: Colors.black.withOpacity(0.3),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 4.0,
                                    ),
                                    Text(
                                      'View in ',
                                      style: robotoLight(
                                              size: 10.0, color: Colors.black)
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
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 17.0,
                      ),
                      Text(
                        'Final booking closes on 11:59 PM, September 15, 2021',
                        style: robotoRegular(
                          size: 10.0,
                          color: Color(0xFFA4A4A4),
                        ).copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 3.0,
                child: Container(
                  height: h * (170 / kScreenHeight),
                  width: w * (325 / kScreenWidth),
                  padding: EdgeInsets.only(
                    top: 8.0,
                    left: 10.0,
                    right: 10.0,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'INR 4000',
                                style: robotoLight(
                                  size: 18.0,
                                ).copyWith(
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(
                                height: h * (6 / kScreenHeight),
                              ),
                              Text(
                                'includes',
                                style: robotoLight(
                                  size: 10.0,
                                ).copyWith(
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: w * (84 / kScreenWidth),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(kBlueShade)),
                            onPressed: () {},
                            child: Container(
                              color: kBlueShade,
                              child: Text(
                                'Download Iternary',
                                style: robotoRegular(
                                  size: 12.0,
                                  color: Colors.white,
                                ).copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              // padding: EdgeInsets.fromLTRB(
                              //   7.0,
                              //   8.0,
                              //   6.0,
                              //   11.0,
                              // ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              'BreakFast ',
                              style: robotoRegular(
                                size: 10.0,
                                color: kBlueShade,
                              ).copyWith(
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                height: 50,
                                thickness: 1,
                                color: kBlueShade,
                              ),
                            ),
                            Text(
                              ' Lunch ',
                              style: robotoRegular(
                                size: 10.0,
                                color: kBlueShade,
                              ).copyWith(
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                height: 50,
                                thickness: 1,
                                color: kBlueShade,
                              ),
                            ),
                            Text(
                              ' High Tea ',
                              style: robotoRegular(
                                size: 10.0,
                                color: kBlueShade,
                              ).copyWith(
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              width: w * 127 / kScreenWidth,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'All meals along with Delegate Kit will be provided at the venue of the event.',
                        style: robotoLight(
                          size: 10.0,
                          color: Color(0xff848484),
                        ).copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Accomodation Package ',
                            style: robotoRegular(
                              size: 12.0,
                              color: Color(0xff848484),
                            ).copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'available at INR 8000',
                            style: robotoRegular(
                              size: 12.0,
                              color: Color(0xff848484),
                            ).copyWith(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 9.0,
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 3.0,
                child: Container(
                  height: h * (162 / kScreenHeight),
                  width: w * (325 / kScreenWidth),
                  padding: EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                    top: 10.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Get in touch with the organizers',
                        style: TextStyle(
                          fontSize: h * 0.023,
                          color: Color(0xFF333333),
                        ),
                      ),
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.instagram,
                            color: kBlueShade,
                            size: 15.0,
                          ),
                          SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            '@w.a.s._2021',
                            style: robotoLight(
                              size: 10.0,
                              color: Color(0xff333333),
                            ).copyWith(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 11.0,
                      ),
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.facebookSquare,
                            color: kBlueShade,
                            size: 15.0,
                          ),
                          SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            'WorldArchiveSimulation2021',
                            style: robotoLight(
                              size: 10.0,
                              color: Color(0xff333333),
                            ).copyWith(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 11.0,
                      ),
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.globe,
                            color: kBlueShade,
                            size: 15.0,
                          ),
                          SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            'www.wasahmedabad.com',
                            style: robotoLight(
                              size: 10.0,
                              color: Color(0xff333333),
                            ).copyWith(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 11.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.email_outlined,
                            color: kBlueShade,
                            size: 15.0,
                          ),
                          SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            'queries@ilmun.com',
                            style: robotoLight(
                              size: 10.0,
                              color: Color(0xff333333),
                            ).copyWith(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: h * (70 / kScreenHeight),
        width: w,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              'assets/icons/briefcase.svg',
              color: Color(0xFF6C6C6C),
            ),
            Text(
              'Add to MyBriefcase',
              style: robotoLight(
                size: 16,
              ),
            ),
            SizedBox(
              width: 1,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SelectCommitteeScreen(),
                  ),
                );
              },
              child: Container(
                height: h * (36 / kScreenHeight),
                width: w * (125 / kScreenWidth),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3), color: kBlueShade),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Book Now!',
                      style: robotoLight(size: 18, color: Colors.white),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    SvgPicture.asset(
                      'assets/icons/right_arrow.svg',
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
