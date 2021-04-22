
import 'package:flutter/material.dart';
import 'package:mun/models/committee.dart';
import 'package:mun/views/elements/constants.dart';
import 'package:mun/views/elements/textstyles.dart';
// ignore: must_be_immutable
class CommitteeDetail extends StatefulWidget {
  Committee current;
  CommitteeDetail({this.current});
  @override
  _CommitteeDetailState createState() => _CommitteeDetailState();
}

class _CommitteeDetailState extends State<CommitteeDetail> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: h * 0.3,
            width: w * 0.95,
            color: Colors.blue,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'United Nations Security Council',
            style: simple(24),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: kGreyShade,
            thickness: 1,
            height: 1,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt '
            'ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud e'
            'xercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
            style: simple(13),
          ),
          SizedBox(
            height: 10,
          ),
          Material(
            elevation: 5,
            child: Container(
              width: w * 0.95,
              height: h * 0.2,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Agenda The Situation in Yemen',
                    style: simple(20),
                  ),
                  Divider(
                    color: kGreyShade,
                    thickness: 1,
                    height: 5,
                  ),
                ],
              ),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
