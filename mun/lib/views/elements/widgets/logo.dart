import 'package:flutter/material.dart';
import 'package:mun/views/elements/constants.dart';

class MUNLogo extends StatefulWidget {
  @override
  _MUNLogoState createState() => _MUNLogoState();
}

class _MUNLogoState extends State<MUNLogo> {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'My',
          style: TextStyle(
            color: kBlueShade,
            fontSize: 24,
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'Next',
              style: TextStyle(
                color: kBlueShade,
              ),
            ),
            TextSpan(
                text: 'MUN',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                )),
          ]),
    );
  }
}
