import 'package:flutter/material.dart';
import 'package:mun/models/committee.dart';
import 'package:mun/models/mun.dart';
import 'package:mun/views/booking_mun/about_mun_screen.dart';

import '../textstyles.dart';
// ignore: must_be_immutable
class CommitteeHorizontalTile extends StatefulWidget {
  Committee current;
  CommitteeHorizontalTile({this.current});
  @override
  _CommitteeHorizontalTileState createState() => _CommitteeHorizontalTileState();
}

class _CommitteeHorizontalTileState extends State<CommitteeHorizontalTile> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        // committee page;
      },
      child: Container(
        width: w * 0.25,
        child: Stack(
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                 widget.current.imageUrls[0].toString(),
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
                  fit: BoxFit.contain
                ),
              ),
              //height: w * 0.5,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: EdgeInsets.all(5),
                height: w*0.15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.current.name,style:simple(16),),
                    SizedBox(width:w*(0.15),child: Text(widget.current.description,style: simple(12),))
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(
                  Icons.share,
                  color: Colors.black,
                  size: 20,
                ),
              ),
            ),

          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
      ),

    );
  }
}

// ignore: must_be_immutable
class HorizontalTile extends StatefulWidget {
  Mun currentMun;
  HorizontalTile({this.currentMun});
  @override
  _HorizontalTileState createState() => _HorizontalTileState();
}

class _HorizontalTileState extends State<HorizontalTile> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AboutMunScreen(
              currentMun: widget.currentMun,
            ),
          ),
        );
      },
      child: Container(
        width: w * 0.33,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  child: Image.network(
                    widget.currentMun.imageUrls[1].toString(),
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
                  height: w * 0.5,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.share,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Text('Name', style: simple(16)),
            Text(
              'Place',
              style: simple(14),
            ),
          ],
        ),
      ),
    );
  }
}
