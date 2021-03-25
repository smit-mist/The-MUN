import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserProfileScreen extends StatefulWidget {
  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      height: h,
      width: w,
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            _auth.signOut();
            Navigator.popAndPushNamed(context, 'welcome');
          },
          child: Text('Logout'),
        ),
      ),
    );
  }
}
