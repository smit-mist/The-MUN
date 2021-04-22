import 'package:flutter/material.dart';
import 'package:mun/logic/database.dart';
import 'package:mun/models/committee.dart';
import 'package:mun/models/mun.dart';
import 'package:mun/views/MUN/about_mun_screen.dart';
import 'package:mun/views/elements/constants.dart';
import 'package:mun/views/elements/textstyles.dart';
import 'package:mun/views/elements/widgets/committee_tile.dart';
import 'package:mun/views/elements/widgets/mun_tile.dart';
import 'package:mun/views/elements/widgets/logo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController = PageController(initialPage: 0);
  double currentPage = 0;
  String city;
  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page;
      });
    });
    //  getUserCityName();
    super.initState();
  }

  void getUserCityName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String uid = prefs.getString('uid');
    String cityName = await Database().getUserCity(uid);
    setState(() {
      city = cityName;
    });
  }

  Mun current = Mun(
    id: '1',
    date: '01/01/2021',
    imageUrls: [
      'https://picsum.photos/200/300',
      'https://picsum.photos/200/300'
    ],
    venue: 'Nowhere',
  );
  Committee here = Committee(
    name: 'U.N.',
    description: 'Security Council',
    imageUrls: ['https://picsum.photos/400/300'],
  );
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        titleSpacing: 10,
        automaticallyImplyLeading: false,
        title: Container(
          width: w * (0.9),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MUNLogo(),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: kBlueShade,
                      ),
                      Text(
                        'Ahmedabad',
                        style: simple(16).copyWith(color: kBlueShade),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                height: 0.01,
                thickness: 1,
                color: kGreyShade.withOpacity(0.4),
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: Center(
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: w * 0.95,
                      height: h * 0.3,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'In your City',
                      style: boldHeading,
                    ),
                    Text(
                      'Explore MUNs around you',
                      style: simple(12),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: w * 0.95,
                      height: h * 0.3,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AboutMunScreen()));
                            },
                            child: HorizontalTile(
                              currentMun: current,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          HorizontalTile(
                            currentMun: current,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          HorizontalTile(
                            currentMun: current,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          HorizontalTile(
                            currentMun: current,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'The Best of MUNs',
                      style: boldHeading,
                    ),
                    Text(
                      'Explore the most popular MUNs from all over the country',
                      style: simple(12),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: w * 0.95,
                      height: h * 0.3,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          HorizontalTile(
                            currentMun: current,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          HorizontalTile(
                            currentMun: current,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          HorizontalTile(
                            currentMun: current,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          HorizontalTile(
                            currentMun: current,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Explore Committees',
                      style: boldHeading,
                    ),
                    SizedBox(
                      width: w * 0.95,
                      child: Text(
                        'Explore the most popular Committees offered by MUNs from all over the country',
                        style: simple(12),
                      ),
                    ),
                    Container(
                      height: h * 0.3,
                      width: w * 0.95,
                      child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (BuildContext _, int ind) {
                          return CommitteeHorizontalTile(
                            current: here,
                          );
                        },
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.3 / 1.7,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: w * 0.95,
                      child: Divider(
                        thickness: 1,
                        height: 1,
                        color: kGreyShade,
                      ),
                    ),
                    Container(
                      width: w * 0.95,
                      height: h * 0.1,
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Are you an Organiser?',
                              style: boldHeading,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Contact us',
                                  style: simple(14).copyWith(
                                      color: kBlueShade,
                                      decoration: TextDecoration.underline),
                                ),
                                Text(
                                  ' to get your MUN listed here!',
                                  style: simple(14),
                                )
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
          ),
        ),
      ),
    );
  }
}
