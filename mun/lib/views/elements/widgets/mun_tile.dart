import 'package:flutter/material.dart';
import 'package:mun/models/mun.dart';
import 'package:mun/views/MUN/about_mun_screen.dart';
import 'package:mun/views/elements/constants.dart';

import '../textstyles.dart';

// ignore: must_be_immutable
class HorizontalTile extends StatefulWidget {
  // This is main widget used to show MUN tile
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
            context, MaterialPageRoute(builder: (context) => AboutMunScreen()));
      },
      child: Container(
        width: w *(105/kScreenWidth),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: h*(171/kScreenHeight),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
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
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.share,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Text('Name', style: robotoMedium(size:12)),
            Text(
              'Place',
              style: robotoLight(size:10),
            ),
          ],
        ),
      ),
    );
  }
}
