import 'package:flutter/material.dart';
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
        leading: Icon(
          Icons.arrow_back,
          color: kGreyShade,
          size: 32,
        ),
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
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Profile',
              style: robotoMedium(size:14),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 1,
              height: 1,
              color: kGreyShade,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Alex Jacob',
                      style:robotoMedium(size:14).copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      '+91 9601113347',
                      style:robotoMedium(size:14).copyWith(
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
                Icon(Icons.edit)
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
                  return ExpansionTile(
                    title: Text(
                      optionName[i],
                    ),
                    children: [
                      Container(
                        height: h * 0.3,
                        width: w * 0.95,
                        color: Colors.blue,
                      )
                    ],
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
