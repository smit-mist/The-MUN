import 'package:flutter/material.dart';
import 'package:mun/models/committee.dart';
import 'package:mun/views/elements/constants.dart';

import '../textstyles.dart';

// ignore: must_be_immutable
class CommitteeSmallTile extends StatefulWidget {
  Committee current;
  bool isActive;
  CommitteeSmallTile({this.current, this.isActive});
  @override
  _CommitteeSmallTileState createState() => _CommitteeSmallTileState();
}

class _CommitteeSmallTileState extends State<CommitteeSmallTile> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
   // double h = MediaQuery.of(context).size.height;
    return Container(
      width: w * (98/kScreenWidth),
      child: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    " "+widget.current.name,
                    style: robotoRegular(size:16).copyWith(color: Colors.white),
                  ),
                  Icon(
                    Icons.share,
                    color: Colors.white,
                    size: 18,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left:5.0,top: 7),
                child: Text(
                  widget.current.description,
                  style:robotoRegular(size:10),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(3)

              ),
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        color:widget.isActive? kBlueShade:kCommitteeTileShade,
        borderRadius: BorderRadius.circular(3),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius:widget.isActive?3: 0,
            blurRadius: 5,
            offset:widget.isActive? Offset(2, 3):Offset(0,0), // changes position of shadow
          ),
        ],
      ),
    );
  }
}
