import 'package:flutter/material.dart';
import 'package:mun/models/mun.dart';
import 'package:mun/views/elements/widgets/horizontal_tile_widget.dart';
import 'file:///C:/Users/smit3/AndroidStudioProjects/The-MUN/mun/lib/unused/mun_grid.dart';
import 'package:mun/views/elements/textstyles.dart';

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Container(
                width: w*0.95,
                child: Material(
                  elevation: 10,
                  child: TextField(
                    decoration: InputDecoration(

                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.blue,

                      ),
                      hintText: 'Dates, MUNs or Locations'
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Container(
                width: w * 0.95,
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
            ],
          ),
        ),
      ),
    );
  }
}
