
import 'package:flutter/material.dart';
import 'package:mun/models/committee.dart';
import 'package:mun/views/booking_mun/about_committee_screen.dart';
import 'package:provider/provider.dart';

import '../textstyles.dart';

class CommitteeGrid extends StatefulWidget {
  @override
  _CommitteeGridState createState() => _CommitteeGridState();
}

class _CommitteeGridState extends State<CommitteeGrid> {
  @override
  Widget build(BuildContext context) {
    var list = Provider.of<List<Committee>>(context);
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return list == null
        ? CircularProgressIndicator()
        : Container(
            padding: EdgeInsets.only(top: 24.0),
            child: GridView.builder(
              itemCount: list.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
                childAspectRatio: (w * 0.04) / (h * 0.03),
              ),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AboutCommitteeScreen(
                            currentCommittee: list[index],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      color: Colors.grey[200],
                      child: Center(
                        child: Text(
                          list[index].name,
                          style: boldHeading,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
  }
}
