import 'package:flutter/material.dart';
import 'package:mun/models/committee.dart';
import 'package:mun/views/MUN/select_committee_screen.dart';
import 'package:mun/views/elements/constants.dart';

import '../textstyles.dart';

// ignore: must_be_immutable
class CommitteeHorizontalTile extends StatefulWidget {
  // This widget is used in home page for Committee Display
  Committee current;
  CommitteeHorizontalTile({this.current});
  @override
  _CommitteeHorizontalTileState createState() =>
      _CommitteeHorizontalTileState();
}

class _CommitteeHorizontalTileState extends State<CommitteeHorizontalTile> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        // committee page;
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => SelectCommitteeScreen(),
          ),
        );
      },
      child: Container(
        //  width: w * (105 / kScreenWidth),
        //    height: h * (71 / kScreenHeight),
        child: Stack(
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                    'https://picsum.photos/300/200',
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes
                            : null,
                      ),
                    );
                  },
                  fit: BoxFit.cover,
                ),
              ),
              //height: w * 0.5,
            ),
            Positioned(
              bottom: 5,
              left: 0,
              child: Container(
                padding: EdgeInsets.only(left: 5),
          //          height: (h * (39 / kScreenHeight)),
            //      width: (w * (40 / kScreenWidth)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.current.name,
                      style: robotoMedium(size: 12),
                    ),
                    SizedBox(
                        width: w * (0.15),
                        child: Text(
                          widget.current.description,
                          style: robotoLight(size: 10),
                        ))
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 5,right: 10),
                child: Icon(
                  Icons.share,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: kGreyShade.withOpacity(0),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
