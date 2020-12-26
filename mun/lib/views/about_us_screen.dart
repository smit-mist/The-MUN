import 'package:flutter/material.dart';

class AboutUsScreen extends StatefulWidget {
  @override
  _AboutUsScreenState createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      height: h,
      width: w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'What is MUN? ',
            style: Theme.of(context).textTheme.headline6,
          ),
          //  SizedBox(height: 10,),
          Text(
            'Some text here',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          //  SizedBox(height: 20,),

          Text(
            'What we do? ',
            style: Theme.of(context).textTheme.headline6,
          ),
          //  SizedBox(height: 10,),

          Text(
            'Some text here',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          //   SizedBox(height: 20,),
          Container(
            height: h * 0.5,
            child: PageView(
              children: [
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.yellow,
                ),
                Container(
                  color: Colors.green,
                ),
                Container(
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
