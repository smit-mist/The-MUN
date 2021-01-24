import 'package:flutter/material.dart';
import 'package:mun/views/booking_mun/about_mun_screen.dart';

import '../textstyles.dart';

class HorizontalTile extends StatefulWidget {
  String name;
  String date;
  String imageUrl;
  HorizontalTile({this.name, this.date, this.imageUrl});
  @override
  _HorizontalTileState createState() => _HorizontalTileState();
}

class _HorizontalTileState extends State<HorizontalTile> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AboutMunScreen(
              name: widget.name,
              imageUrl: widget.imageUrl,
              date: widget.date,
              description: "This is description",
            ),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: w * 0.6,
        width: w * 0.4,
        child: Column(
          children: [
            Container(
              child: Image.network(
                widget.imageUrl,
                fit: BoxFit.cover,
              ),
              height: w * 0.5,
            ),
            SizedBox(
              height: 7,
            ),
            Text(widget.name, style: simple(16)),
            SizedBox(
              height: 7,
            ),
            Text(
              widget.date,
              style: simple(14),
            ),
          ],
        ),
      ),
    );
  }
}
