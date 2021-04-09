import 'package:flutter/material.dart';

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
            color: Colors.black,
            fontSize: 24,
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'Next',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w300,
              ),
            ),
            TextSpan(
                text: 'MUN',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
          ]),
    );
  }
}
