import 'package:flutter/material.dart';
import 'package:mun/models/committee.dart';
import 'package:mun/models/mun.dart';
import 'package:mun/views/elements/constants.dart';

import '../textstyles.dart';

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
    double h = MediaQuery.of(context).size.height;
    return Material(
      elevation: 5,
      child: Container(
        width: w * 0.2,
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.current.name,
                      style: simple(16).copyWith(color: Colors.white),
                    ),
                    Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                child: Center(
                    child: Text(
                  widget.current.description,
                  style: simple(14),
                )),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                ),
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          color:widget.isActive? Colors.blue:kGreyShade.withOpacity(0.4),
          borderRadius: BorderRadius.circular(3),
        ),
      ),
    );
  }
}
