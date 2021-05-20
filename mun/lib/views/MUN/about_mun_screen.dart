import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mun/views/MUN/select_committee_screen.dart';
import 'package:mun/views/elements/constants.dart';
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
        padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'World Archive Simulation',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: h * (kMediumTextSize - 0.005),
                ),
              ),
              Divider(
                height: 0.01,
                thickness: 1,
                color: kGreyShade.withOpacity(0.4),
              ),
              SizedBox(
                height: h * 0.03,
              ),
              Card(
                elevation: 5.0,
                child: Container(
                  height: h * 0.25,
                  width: w,
                  padding: EdgeInsets.symmetric(horizontal: w * 0.027),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Priority Booking Closes in',
                        style: TextStyle(
                          fontSize: h * kSmallTextSize,
                          color: kBlackShade,
                        ),
                      ),
                      Container(
                        width: w,
                        height: h * 0.008,
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
                      Text(
                        '03  22   05    06',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: kBlueShade,
                          fontSize: h * kMediumTextSize,
                        ),
                      ),
                      Text(
                        'DAYS    HOURS    MINUTES  SECONDS',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Wrap(
                        children: [
                          Text(
                            '*Priority registration customers will enjoy',
                            style: TextStyle(
                              fontSize: h * (kExtraSmallTextSize - 0.01),
                              color: Colors.grey[400],
                            ),
                          ),
                          Text(
                            ' added benefits ',
                            style: TextStyle(
                              fontSize: h * (kExtraSmallTextSize - 0.008),
                              color: kBlueShade,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          Text(
                            'WITHOUT any added costs',
                            style: TextStyle(
                              fontSize: h * (kExtraSmallTextSize - 0.008),
                              color: Colors.grey[400],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.03,
              ),
              Container(
                height: h * 0.3,
                width: w,
                decoration: BoxDecoration(
                  color: Color(0xFF94CCFF),
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              SizedBox(
                height: h * 0.05,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Faucibus id fringilla lectus mauris. Ultricies faucibus sit eget mauris at. Velit orci, mauris at et nulla pellentesque amet, sollicitudin. Vestibulum suspendisse augue et nec vel, nam. hajtkhms a. jqherk kajejoro akwjfj lawmj lawke. awkd awjkdf.awkdl',
                style: TextStyle(fontSize: h * kExtraSmallTextSize),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Text(
                'Elit non ipsum id arcu. Mattis nunc, in duis quam alique. Suspendisse viverra turpis ornare turpis. Vitae erat sed purus sit feugiat eget nunc. Proin et condimentum leo quis quis in non gravida. Justo.',
                style: TextStyle(fontSize: h * kExtraSmallTextSize),
              ),
              SizedBox(
                height: h * 0.03,
              ),
              Card(
                elevation: 5.0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.02),
                  height: h * 0.3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today_outlined,
                            color: kBlueShade,
                            size: w * 0.05,
                          ),
                          SizedBox(
                            width: w * 0.025,
                          ),
                          Text(
                            'October 13-14, 2021',
                            style: TextStyle(
                              fontSize: h * (kExtraSmallTextSize + 0.005),
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
                            Icons.people,
                            color: kBlueShade,
                          ),
                          SizedBox(
                            width: w * 0.025,
                          ),
                          Text(
                            '50 seats left',
                            style: TextStyle(
                              fontSize: h * (kExtraSmallTextSize + 0.005),
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
                            style: TextStyle(
                                fontSize: h * (kExtraSmallTextSize + 0.005)),
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
                              fontSize: h * (kExtraSmallTextSize + 0.005),
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
                            style: TextStyle(
                                fontSize: h * (kExtraSmallTextSize - 0.005)),
                          ),
                          Text(
                            'Maps',
                            style: TextStyle(
                              fontSize: h * (kExtraSmallTextSize - 0.005),
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
                          fontSize: h * kExtraSmallTextSize,
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
                                  fontSize: h * kMediumTextSize,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'includes',
                                style: TextStyle(
                                  fontSize: h * (kExtraSmallTextSize),
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
                                fontSize: h * kExtraSmallTextSize,
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
                                fontSize: h * kExtraSmallTextSize,
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
                                fontSize: h * kExtraSmallTextSize,
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
                          fontSize: h * (kExtraSmallTextSize - 0.005),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Accomodation Package ',
                            style: TextStyle(
                              color: Color(0xFF848484),
                              fontWeight: FontWeight.bold,
                              fontSize: h * kExtraSmallTextSize,
                            ),
                          ),
                          Text(
                            'available at INR 8000',
                            style: TextStyle(
                              color: Color(0xFF848484),
                              fontSize: h * kExtraSmallTextSize,
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
                          fontSize: h * kSmallTextSize,
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
                fontSize: h * (kExtraSmallTextSize + 0.003),
              ),
            ),
            Container(
              height: h * 0.05,
              width: w * 0.35,
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
                            fontSize: 10,
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
