import 'package:flutter/material.dart';
import 'package:mun/models/mun.dart';
import 'package:mun/views/elements/constants.dart';
import 'package:mun/views/elements/textstyles.dart';
import 'package:mun/views/elements/widgets/mun_tile.dart';

class AllMun extends StatefulWidget {
  @override
  _AllMunState createState() => _AllMunState();
}

class _AllMunState extends State<AllMun> {
  Mun current = Mun(
    id: '1',
    date: '01/01/2021',
    imageUrls: [
      'https://picsum.photos/200/300',
      'https://picsum.photos/200/300'
    ],
    venue: 'Nowhere',
  );
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Center(
        child: Container(
          color: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:1.0),
                child: Container(
                  color: Colors.transparent,

                  width: double.infinity,
                  height: h*(40/kScreenHeight),
                  child: Material(
                    elevation: 10,
                    child: TextField(
                      decoration: InputDecoration(

                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.blue,

                        ),
                        hintText: 'Dates, MUNs or Locations',
                        hintStyle: robotoMedium(size: 12,color: kSearchHintShade),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 8)
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:0.0),
                child: Container(
                  color: Colors.transparent,

                  width: double.infinity,
                  height: h * 0.3,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      HorizontalTile(
                        currentMun: current,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      HorizontalTile(
                        currentMun: current,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      HorizontalTile(
                        currentMun: current,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      HorizontalTile(
                        currentMun: current,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
