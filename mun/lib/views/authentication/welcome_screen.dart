import 'package:flutter/material.dart';
import 'package:mun/views/elements/constants.dart';
import 'package:mun/views/elements/textstyles.dart';
// TODO: Login Button Color
class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: h * 0.4,
                width: w,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: 'My',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 34,
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
                      ),
                      SizedBox(
                        height: h * 0.005,
                      ),
                      Text(
                        'Learn, Book, Participate',
                        style: TextStyle(
                          color: Color(0xFFB2B2B2),
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.35,
              ),
              Container(
                height: h * 0.25,
                width: w,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: h * 0.05,
                      width: w * 0.4,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(kBlueShade),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'sign_up');
                        },
                        child: Text(
                          'Sign Up',
                          style: simple(18).copyWith(
                              color: Colors.white, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    Container(
                      height: h * 0.05,
                      width: w * 0.4,
                      decoration: BoxDecoration(
                        border: Border.all(color: kBlueShade),
                      ),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                            BeveledRectangleBorder(
                              side: BorderSide(
                                color: kBlueShade,
                                width: 3.0,
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'login');
                        },
                        child: Text(
                          'Log In',
                          style: simple(18).copyWith(
                              color: kBlueShade, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
