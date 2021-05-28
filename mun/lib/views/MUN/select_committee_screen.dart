import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mun/models/committee.dart';
import 'package:mun/views/elements/constants.dart';
import 'package:mun/views/elements/textstyles.dart';
import 'package:mun/views/elements/widgets/committee_detail_widget.dart';
import 'package:mun/views/elements/widgets/committee_small_tile.dart';
import 'package:mun/views/elements/widgets/logo.dart';

import 'my_booking_screen.dart';

// TODO: Navigation Path of Select Committee to-be set
Committee here = Committee(
  name: 'U.N.',
  description: 'Security Council',
  imageUrls: ['https://picsum.photos/400/300'],
);
List<Committee> allCommittee = [here, here, here, here, here, here, here];

int selected = 0;

class SelectCommitteeScreen extends StatefulWidget {
  @override
  _SelectCommitteeScreenState createState() => _SelectCommitteeScreenState();
}

class _SelectCommitteeScreenState extends State<SelectCommitteeScreen> {
  @override
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
        color: kGreyShade,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    height: h * (210 / kScreenHeight),
                    width: double.infinity,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: ((w * (98 / kScreenWidth)) /
                              (h * (58 / kScreenHeight))),
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 15,
                        ),
                        itemCount: allCommittee.length,
                        itemBuilder: (BuildContext _, int ind) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selected = ind;
                              });
                            },
                            child: CommitteeSmallTile(
                              current: allCommittee[ind],
                              isActive: selected == ind ? true : false,
                            ),
                          );
                        }),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CommitteeDetail(
                  current: allCommittee[selected],
                ),
              ],
            ),
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
            Text('Add to MyBriefcase',
                style: robotoLight(
                  size: 16,
                )),
            SizedBox(
              width: 1,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyBooking(),
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
