import 'package:flutter/material.dart';
import 'package:mun/models/mun.dart';
import 'package:mun/views/booking_mun/about_mun_screen.dart';

import '../textstyles.dart';

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
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: w * 0.45,
        child: Column(
          children: [
            Container(
              child: Image.network(
                widget.currentMun.imageUrls[0].toString(),
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
            SizedBox(
              height: 7,
            ),
            Text(widget.currentMun.venue, style: simple(16)),
            SizedBox(
              height: 7,
            ),
            Text(
              widget.currentMun.date,
              style: simple(14),
            ),
          ],
        ),
      ),
    );
  }
}
