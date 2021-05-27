import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mun/logic/database.dart';
import 'package:mun/models/committee.dart';
import 'package:mun/models/mun.dart';
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        titleSpacing: 10,
        automaticallyImplyLeading: false,
        title: Container(
          padding: EdgeInsets.only(
            top: h * (30 / kScreenHeight),
            left: 20,
            right: 20,
          ),
          width: double.infinity,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MUNLogo(),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/location.svg',
                        color: kBlueShade,
                      ),
                      Text(
                        ' Ahmadabad',
                        style: robotoLight(size: 14, color: kBlueShade),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 7,
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: Colors.black.withOpacity(0.3),
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
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5.0, vertical: 7),
                      child: Container(
                        width: double.infinity,
                        height: h * (194 / kScreenHeight),
                        child: Image.network(
                          'https://picsum.photos/400/300',
                          loadingBuilder: (BuildContext context, Widget child,
                              ImageChunkEvent loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(
                              child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes !=
                                        null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes
                                    : null,
                              ),
                            );
                          },
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Text(
                        'In your City',
                        style: robotoMedium(size: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Text(
                        'Explore MUNs around you',
                        style: robotoLight(size: 10),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        height: h * 0.3,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: 20,
                          itemBuilder: (BuildContext _, int ind) {
                            return HorizontalTile(
                              currentMun: current,
                            );
                          },
                          separatorBuilder: (_, __) {
                            return SizedBox(
                              width: 10,
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Text(
                        'The Best of MUNs',
                        style: robotoMedium(size: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Text(
                        'Explore the most popular MUNs from all over the country',
                        style: robotoLight(size: 10),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        height: h * 0.3,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: 20,
                          itemBuilder: (BuildContext _, int ind) {
                            return HorizontalTile(
                              currentMun: current,
                            );
                          },
                          separatorBuilder: (_, __) {
                            return SizedBox(
                              width: 10,
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Text(
                        'Explore Committees',
                        style: robotoMedium(size: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Explore the most popular Committees offered by MUNs from all over the country',
                          style: robotoLight(size: 10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        height: h * (150/kScreenHeight),
                        width: double.infinity,
                        child: GridView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (BuildContext _, int ind) {
                            return CommitteeHorizontalTile(
                              current: here,
                            );
                          },
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: ((h*(71/kScreenHeight)/(w*(105/kScreenWidth)))),
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 5,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Divider(
                        thickness: 1,
                        height: 1,
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left:25.0),
                      child: Container(
                        width: w * 0.95,
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Are you an Organiser?',
                                style: robotoMedium(size: 16),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Contact us',
                                    style: robotoLight(size: 14).copyWith(
                                        color: kBlueShade,
                                        decoration: TextDecoration.underline),
                                  ),
                                  Text(
                                    ' to get your MUN listed here!',
                                    style: robotoLight(size: 14),
                                  )
                                ],
                              ),
                              SizedBox(height: 10,),
                            ],
                          ),
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
