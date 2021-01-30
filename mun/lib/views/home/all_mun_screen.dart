import 'package:flutter/material.dart';
import 'package:mun/logic/database.dart';
import 'package:mun/logic/mun_data.dart';
import 'package:mun/models/mun.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mun/views/booking_mun/about_mun_screen.dart';
import 'package:mun/views/elements/textstyles.dart';
import 'package:mun/views/elements/widgets/horizontal_tile_widget.dart';

class AllMun extends StatefulWidget {
  @override
  _AllMunState createState() => _AllMunState();
}

class _AllMunState extends State<AllMun> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return StreamProvider<List<Mun>>.value(
      value: MunService().muns,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.white,
          title: Text(
            'All Mun',
            style: boldHeading,
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: GridView.builder(
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5.0,
              crossAxisSpacing: 8.0,
              childAspectRatio: 5 / 7,
            ),
            itemBuilder: (BuildContext context, int index) {
              return HorizontalTile(
                imageUrl:"https://picsum.photos/200/300",
                name: "MUN 1",
                date:"DD/MM/YYY",
              );
            },
          ),
        ),
      ),
    );
  }
}
