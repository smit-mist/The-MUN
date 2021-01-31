import 'package:flutter/material.dart';
import 'package:mun/logic/committee_data.dart';
import 'package:mun/models/committee.dart';
import 'package:mun/models/mun.dart';
import 'package:mun/views/elements/textstyles.dart';
import 'package:mun/views/elements/widgets/committee_grid.dart';
import 'package:provider/provider.dart';
import 'about_committee_screen.dart';

class SelectCommitteeScreen extends StatefulWidget {
  Mun currentMun;
  SelectCommitteeScreen({this.currentMun});
  @override
  _SelectCommitteeScreenState createState() => _SelectCommitteeScreenState();
}

class _SelectCommitteeScreenState extends State<SelectCommitteeScreen> {

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return StreamProvider<List<Committee>>.value(
      value: CommitteeService(id: widget.currentMun.id).committee,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Committees',
            style: boldHeading,
          ),

        ),
        body: CommitteeGrid(),
      ),
    );
  }
}
