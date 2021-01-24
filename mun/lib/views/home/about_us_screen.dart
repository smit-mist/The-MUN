import 'package:flutter/material.dart';
import 'package:mun/views/booking_mun/about_mun_screen.dart';
import 'package:mun/views/elements/textstyles.dart';
import 'package:mun/views/elements/widgets/horizontal_tile_widget.dart';
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
        toolbarHeight: h * 0.07,
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
                  style: simple(16),
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
                alignment: Alignment.center,
                children: [
                  PageView(
                    controller: _pageController,
                    children: [
                      Container(
                        child: Image.network(
                          'https://picsum.photos/id/54/200/300',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        child: Image.network(
                          'https://picsum.photos/id/34/200/300',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        child: Image.network(
                          'https://picsum.photos/id/100/200/300',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    left: 5,
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
                    right: 5,
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
                  return HorizontalTile(
                    imageUrl: 'https://picsum.photos/id/${index+10}/200/300',
                    name: 'MUN ${index+1}',
                    date: 'DD/MM/YYYY',
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
