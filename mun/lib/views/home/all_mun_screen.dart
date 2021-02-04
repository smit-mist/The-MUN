import 'package:flutter/material.dart';
import 'package:mun/views/elements/widgets/mun_grid.dart';
import 'package:mun/views/elements/textstyles.dart';

class AllMun extends StatefulWidget {
  @override
  _AllMunState createState() => _AllMunState();
}

class _AllMunState extends State<AllMun> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
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
      body: MunGrid(),
    );
  }
}
