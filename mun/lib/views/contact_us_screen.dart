import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      height: h,
      width: w,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Contact Us', style: Theme.of(context).textTheme.headline6),
          Container(
            width: w * 0.8,
            child: TextField(
              onChanged: (change) {
                setState(() {
                  //password = change;
                });
              },
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
                prefixIcon: Icon(Icons.account_circle),
              ),
            ),
          ),
          Container(
            width: w * 0.8,
            child: TextField(
              onChanged: (change) {
                setState(() {
                  //password = change;
                });
              },
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
          ),
          Container(
            width: w * 0.8,
            child: TextField(
              minLines: 4,
              maxLength: 500,
              maxLines: 5,
              onChanged: (change) {
                setState(() {
                  //password = change;
                });
              },
              decoration: InputDecoration(
                labelText: 'Message',
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Submit',
            ),
          ),
        ],
      ),
    );
  }
}
