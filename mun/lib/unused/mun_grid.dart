import 'package:flutter/material.dart';
import 'package:mun/models/mun.dart';
import 'package:provider/provider.dart';

import '../views/elements/widgets/horizontal_tile_widget.dart';

class MunGrid extends StatefulWidget {
  @override
  _MunGridState createState() => _MunGridState();
}

class _MunGridState extends State<MunGrid> {
  @override
  Widget build(BuildContext context) {
    var list = Provider.of<List<Mun>>(context);
    return list == null
        ? CircularProgressIndicator()
        : Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: GridView.builder(
              itemCount: list.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 8.0,
                childAspectRatio: 5 / 7,
              ),
              itemBuilder: (BuildContext context, int index) {
                return HorizontalTile(
                  currentMun: list[index],
                );
              },
            ),
          );
  }
}
