import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mun/models/committee.dart';
import 'package:mun/views/elements/constants.dart';
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
                  SizedBox(width: 5,),
                  MUNLogo(),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: w*(345/kScreenWidth),
                padding: const EdgeInsets.only(right:25.0),
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
                SizedBox(height: 10,),
                Container(
                  height: h * 0.3,
                  width: w * 0.95,
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 3.5 / 2,
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
                CommitteeDetail(
                  current: allCommittee[selected],
                ),
              ],
            ),
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
              width: w * 0.35,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(kBlueShade),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => MyBooking(),
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Book Now!',
                      style: TextStyle(color: Colors.white),
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
