import 'package:flutter/material.dart';
import 'package:mun/models/mun.dart';
import 'package:provider/provider.dart';

import 'horizontal_tile_widget.dart';

class MunList extends StatefulWidget {
  @override
  _MunListState createState() => _MunListState();
}

class _MunListState extends State<MunList> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    var list = Provider.of<List<Mun>>(context);
    return Container(
      width: w,
      height: h * 0.3,
      child: list == null
          ? Center(
              child: Container(
                child: CircularProgressIndicator(),
                height: h * 0.05,
              ),
            )
          : ListView.builder(
              itemCount: list.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return HorizontalTile(
                  imageUrl: list[index].imageUrls[0].toString(),
                  name: list[index].venue,
                  date: list[index].date,
                );
              },
            ),
    );
  }
}
