import 'package:flutter/material.dart';
import 'file:///C:/Users/smit3/AndroidStudioProjects/The-MUN/mun/lib/views/booking_mun/about_mun_screen.dart';
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
        toolbarHeight: 60,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('It All Starts Here!',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22)),
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
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              )
            ],
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'extra_details');
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
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
              height: h * 0.2,
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
                    top: h * 0.07,
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
                    top: h * 0.07,
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
              height: h * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'MUNs In Your Region:',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See all >',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Expanded(
              child: Container(
                width: w,
                child: GridView.count(
                  crossAxisCount: 2,
                  children: List.generate(100, (index) {
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
                        height: w * 0.5,
                        child: Column(
                          children: [
                            Container(
                              color: Colors.blue,
                              width: w * 0.4,
                              height: w * 0.4,
                            ),
                            Text('MUN ${index + 1}'),
                            Text('Date of MUN'),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
