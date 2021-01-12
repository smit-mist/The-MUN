import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "THE MUN",
          ),
        ),
      ),
      body: Center(
        child: Material(
          elevation: 20,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            width: w * 0.75,
            height: h * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('sign_up');
                  },
                  child: Container(
                    width: w * 0.45,
                    child: Center(
                      child: Text(
                        'Sign Up',
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('login');
                  },
                  child: Container(
                    width: w * 0.45,
                    child: Center(
                      child: Text(
                        'Login',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
