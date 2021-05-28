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
                  height: h * (113 / kScreenHeight),
                  width: w,
                  padding: EdgeInsets.only(left: 11.0, top: 8.0, right: 11.0),
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
                  height: h * (166 / kScreenHeight),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 11.0,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/calendar.svg',
                            color: kBlueShade,
                            height: 24.0,
                            width: 24.0,
                          ),
                          SizedBox(
                            width: 11.0,
                          ),
                          Text(
                            'October 13-14, 2021',
                            style: robotoLight(size: 14.0, color: Colors.black)
                                .copyWith(
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
                          GestureDetector(
                            child: SvgPicture.asset(
                              'assets/icons/vacancy.svg',
                              color: kBlueShade,
                            ),
                          ),
                          SizedBox(
                            width: 4.0,
                          ),
                          SizedBox(
                            width: w * 0.025,
                          ),
                          Text(
                            '50 seats left',
                            style: TextStyle(
                              fontSize: h * (0.02 + 0.005),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * 0.018,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.timer,
                            color: kBlueShade,
                          ),
                          SizedBox(
                            width: w * 0.025,
                          ),
                          Text(
                            '10:00 AM - 5:00 PM',
                            style: TextStyle(fontSize: h * (0.02 + 0.005)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: kBlueShade,
                          ),
                          SizedBox(
                            width: w * 0.025,
                          ),
                          Text(
                            'Zydus School',
                            style: TextStyle(
                              fontSize: h * (0.02 + 0.005),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              height: 50,
                              thickness: 1,
                              color: kGreyShade.withOpacity(0.4),
                            ),
                          ),
                          Text(
                            'View in ',
                            style: TextStyle(fontSize: h * (0.02 - 0.005)),
                          ),
                          Text(
                            'Maps',
                            style: TextStyle(
                              fontSize: h * (0.02 - 0.005),
                              color: kBlueShade,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Final booking closes on 11:59 PM, September 15, 2021',
                        style: TextStyle(
                          color: Colors.grey[300],
                          fontSize: h * 0.02,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 5.0,
                child: Container(
                  height: h * 0.25,
                  padding: EdgeInsets.symmetric(horizontal: w * 0.015),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'INR 4000',
                                style: TextStyle(
                                  fontSize: h * 0.025,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'includes',
                                style: TextStyle(
                                  fontSize: h * (0.02),
                                ),
                              ),
                            ],
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
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: w * 0.001, vertical: h * 0.0005),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: w * 0.63,
                        child: Row(
                          children: [
                            Text(
                              'BreakFast ',
                              style: TextStyle(
                                fontSize: h * 0.02,
                                color: kBlueShade,
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
                              style: TextStyle(
                                fontSize: h * 0.02,
                                color: kBlueShade,
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
                              style: TextStyle(
                                fontSize: h * 0.02,
                                color: kBlueShade,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'All meals along with Delegate Kit will be provided at the venue of the event.',
                        style: TextStyle(
                          color: Color(0xFF848484),
                          fontSize: h * (0.02 - 0.005),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Accomodation Package ',
                            style: TextStyle(
                              color: Color(0xFF848484),
                              fontWeight: FontWeight.bold,
                              fontSize: h * 0.02,
                            ),
                          ),
                          Text(
                            'available at INR 8000',
                            style: TextStyle(
                              color: Color(0xFF848484),
                              fontSize: h * 0.02,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 5.0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.015),
                  height: h * 0.25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                          ),
                          SizedBox(
                            width: w * 0.02,
                          ),
                          Text(
                            '@w.a.s._2021',
                            style: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: h * 0.018,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.facebookSquare,
                            color: kBlueShade,
                          ),
                          SizedBox(
                            width: w * 0.02,
                          ),
                          Text(
                            'WorldArchiveSimulation2021',
                            style: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: h * 0.018,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.globe,
                            color: kBlueShade,
                          ),
                          SizedBox(
                            width: w * 0.02,
                          ),
                          Text(
                            'www.wasahmedabad.com',
                            style: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: h * 0.018,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.email_outlined,
                            color: kBlueShade,
                          ),
                          SizedBox(
                            width: w * 0.02,
                          ),
                          Text(
                            'queries@ilmun.com',
                            style: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: h * 0.018,
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
        ),
      ),
      bottomNavigationBar: Container(
        height: h * 0.1,
        width: w,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FaIcon(
              FontAwesomeIcons.briefcase,
              color: Color(0xFF6C6C6C),
              size: h * 0.03,
            ),
            Text(
              'Add to MyBriefcase',
              style: TextStyle(
                fontSize: h * (0.02 + 0.003),
              ),
            ),
            Container(
              height: h * 0.05,
              width: w * 0.4,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(kBlueShade),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => SelectCommitteeScreen(),
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Book Now!',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Select Committee',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: h * 0.014,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_rounded,
                      color: Colors.white,
                      //size: h*0.02,
                    ),
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
