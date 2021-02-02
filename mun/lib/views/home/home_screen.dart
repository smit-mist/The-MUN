import 'package:flutter/material.dart';
import 'package:mun/logic/database.dart';
import 'package:mun/models/mun_user.dart';
import 'package:mun/views/elements/textstyles.dart';
import 'package:mun/views/elements/widgets/home_mun_list.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'all_mun_screen.dart';
import 'package:mun/views/Home/select_city_screen.dart';

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
    getUserCityName();
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
                  city != null ? city : 'City >',
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
                      Container(
                        child: Image.network(
                          'https://picsum.photos/id/34/200/300',
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
                      Container(
                        child: Image.network(
                          'https://picsum.photos/id/100/200/300',
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
            // Container(
            //   width: w,
            //   height: h * 0.3,
            //   child:Provider.of<List<Mun>>(context)==null?Center(child: Container(child: CircularProgressIndicator(),height: h*0.05,)): ListView.builder(
            //     itemCount:Provider.of<List<Mun>>(context).length,
            //     scrollDirection: Axis.horizontal,
            //     itemBuilder: (BuildContext context, int index) {
            //       return HorizontalTile(
            //         imageUrl: Provider.of<List<Mun>>(context)[index].imageUrls[0].toString(),
            //         name: Provider.of<List<Mun>>(context)[index].venue,
            //         date: Provider.of<List<Mun>>(context)[index].date,
            //       );
            //     },
            //   ),
            // ),
            MunList(),
          ],
        ),
      ),
    );
  }
}

// bool gettingMUN = false;
// Future<void> getMUN() async {
//   gettingMUN=true;
//   await _db.collection('MUN').get().then((value) {
//
//     value.docs.forEach((element) {
//       MUN current = MUN(
//         id: element.id,
//         venue: element['Venue'],
//         //    description: element['Description'],
//         //  registrationFees: element['Fees'],
//         imageUrls: element['Media'],
//         //  registrationTime: element['Registration Time'],
//         // sheetLink: element['Sheet link'],
//         //city: element['City'],
//         date: element['Date'],
//
//       );
//       allMuns.add(current);
//
//     });
//     gettingMUN=false;
//
//   });
//   return;
// }
