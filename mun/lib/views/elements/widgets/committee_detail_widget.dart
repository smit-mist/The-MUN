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
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: h *(185/kScreenHeight),
            width: double.infinity,
            decoration: BoxDecoration(
                color: kBlueShade,

              borderRadius: BorderRadius.circular(3)
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'United Nations Security Council',
            style: robotoLight(size:22,),
          ),
          SizedBox(
            height: 12,
          ),
          Divider(
            color: Colors.black.withOpacity(0.3),
            thickness: 1,
            height: 1,
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt '
            'ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud e'
            'xercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
            style: robotoLight(size:12),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width:double.infinity,
            height: h *(143/kScreenHeight),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Text(
                      'Agenda ',
                      style: robotoRegular(size:16).copyWith(fontWeight: FontWeight.w600)
                    ),
                    Text(
                      'The Situation in Yemen',
                      style: robotoLight(size:16)
                    )
                  ],
                ),
                Divider(
                  color: Colors.black.withOpacity(0.3),
                  thickness: 1,
                  height: 1,
                ),
                Row(
                  children: [
                    Text(
                      '27 ',
                      style:robotoMedium(size:16).copyWith(
                          fontWeight: FontWeight.w700, color: kBlueShade),
                    ),
                    Text(
                      'Seats remaining!*',
                      style: robotoLight(size:16).copyWith(
                        color: kBlueShade
                      ),
                    )
                  ],
                ),
                Divider(
                  color: Colors.black.withOpacity(0.3),

                  thickness: 1,
                  height: 1,
                ),
                Row(
                  children: [
                    Text(
                      'Level ',
                        style: robotoRegular(size:16).copyWith(fontWeight: FontWeight.w600)

                    ),
                    Text(
                      'Advanced',
                      style: robotoLight(size:16)
                    )
                  ],
                ),
                SizedBox(height: 3,),
                Text(
                  '*Country allocation would be allocated via E-mail.',
                  style: robotoRegular(size:10).copyWith(
                    color: Colors.black.withOpacity(
                      0.5,
                    ),
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  spreadRadius:0,
                  blurRadius: 6,
                  offset:Offset(3, 3)// changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(3),
            ),

          ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}
