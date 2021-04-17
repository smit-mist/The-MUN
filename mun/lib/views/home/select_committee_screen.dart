import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mun/models/committee.dart';
import 'package:mun/views/elements/constants.dart';
import 'package:mun/views/elements/widgets/horizontal_tile_widget.dart';
import 'package:mun/views/elements/widgets/logo.dart';

Committee here = Committee(
  name: 'U.N.',
  description: 'Security Council',
  imageUrls: ['https://picsum.photos/400/300'],
);
List<Committee> allCommittee = [here, here, here, here, here, here, here];
List<Widget> wi = [];

class SelectCommitteeScreen extends StatefulWidget {
  @override
  _SelectCommitteeScreenState createState() => _SelectCommitteeScreenState();
}

class _SelectCommitteeScreenState extends State<SelectCommitteeScreen> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(wi.length);
    if(wi.length ==0){
      for (int i = 0; i < allCommittee.length; i++) {
        wi.add(CommitteeHorizontalTile(
          current: allCommittee[i],
        ));
      }
    }

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: kGreyShade,
          size: 32,
        ),
        title: MUNLogo(),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            height: h*0.4,
            width: w*0.95,
            child: GridView(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              children: wi,

            ),
          ),
        ],
      ),
    );
  }
}
