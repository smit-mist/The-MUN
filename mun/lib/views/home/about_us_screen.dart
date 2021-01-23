import 'package:flutter/material.dart';
import 'package:mun/views/booking_mun/about_mun_screen.dart';
import 'package:mun/views/elements/textstyles.dart';
import 'all_mun_screen.dart';
import 'package:mun/views/Home/select_city_screen.dart';

class AboutUsScreen extends StatefulWidget {
  @override
  _AboutUsScreenState createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  PageController _pageController = PageController(initialPage: 0);
  double currentPage = 0;
  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: h*0.07,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'It All Starts Here!',
                style: boldHeading,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SelectCityScreen(),
                    ),
                  );
                },
                child: Text(
                  'City >',
                  style:simple(16),
                ),
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.qr_code,
              color: Colors.black,
            ),
          )
        ],
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: h * 0.3,
              width: w,
              child: Stack(
                children: [
                  PageView(
                    controller: _pageController,
                    children: [
                      Container(
                        color: Colors.green,
                      ),
                      Container(
                        color: Colors.cyan,
                      ),
                      Container(
                        color: Colors.red,
                      ),
                    ],
                  ),
                  Positioned(
                    top: h * 0.13,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        setState(() {
                          _pageController.animateToPage(currentPage.round() - 1,
                              duration: Duration(milliseconds: 600),
                              curve: Curves.ease);
                          currentPage--;
                        });
                      },
                    ),
                  ),
                  Positioned(
                    top: h * 0.13,
                    right: 0,
                    child: IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      onPressed: () {
                        setState(() {
                          _pageController.animateToPage(currentPage.round() + 1,
                              duration: Duration(milliseconds: 600),
                              curve: Curves.ease);
                          currentPage++;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: h * 0.06,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'MUNs In Your Region:',
                    style: boldHeading,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => AllMun(),
                        ),
                      );
                    },
                    child: Text(
                      'See all >',
                      style: simple(20),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: h * 0.06,
            ),
            Container(
              width: w,
              height: h * 0.3,
              child: ListView.builder(
                itemCount: 50,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AboutMunScreen(),
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: w * 0.6,
                      width: w * 0.4,
                      child: Column(
                        children: [
                          Container(
                            color: Colors.blue,
                            height: w * 0.5,
                          ),
                          SizedBox(height: 7,),
                          Text('MUN ${index + 1}',style:simple(16)),
                          SizedBox(height: 7,),

                          Text('DD/MM/YYYY',style:simple(14)),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
