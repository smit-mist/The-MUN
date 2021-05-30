import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mun/views/elements/constants.dart';
import 'package:mun/views/elements/textstyles.dart';
import 'package:mun/views/elements/widgets/logo.dart';

List<String> optionName = [
  'Account',
  'Booking History',
  'List your MUN',
  'About MyNextMUN',
  'ShareMyNextMUN',
  'Payment Options',
  'Settings',
];

class UserProfileScreen extends StatefulWidget {
  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        toolbarHeight: 60,
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
                height: 5,
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
        color: kBackgroundShade,
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'My Profile',
              style: robotoLight(size: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 1,
              height: 1,
              color: Colors.black.withOpacity(0.3),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Alex Jacob',
                      style: robotoMedium(size: 16).copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      '+91 9601113347',
                      style: robotoRegular(size: 10).copyWith(
                        color: kBlueShade,
                      ),
                    )
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 3.0),
                  child: SvgPicture.asset(
                    'assets/icons/edit.svg',
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              // height: h * 0.5,
              child: ListView.builder(
                itemCount: optionName.length,
                itemBuilder: (context, i) {
                  return Tile(text: optionName[i]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Tile extends StatefulWidget {
  String text;
  Tile({this.text});
  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom:10.0),
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.arrow_forward_ios,
              size: 16,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.text,
                  style: robotoLight(size: 14,color: Colors.black.withOpacity(0.8)),
                ),
                SizedBox(height: 10,),
                SizedBox(
                  width: w * 0.8,
                  child: Divider(
                    thickness: 1,
                    height: 1,
                    color: Colors.black.withOpacity(0.1),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
