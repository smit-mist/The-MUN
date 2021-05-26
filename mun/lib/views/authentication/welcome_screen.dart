import 'package:flutter/material.dart';
import 'package:mun/views/elements/constants.dart';
import 'package:mun/views/elements/textstyles.dart';

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
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: h * (144 / kScreenHeight),
              ),
              RichText(
                text: TextSpan(
                    text: 'My',
                    style: TextStyle(
                      color: kBlueShade,
                      fontSize: 34,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Next',
                        style: TextStyle(
                          color: kBlueShade,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      TextSpan(
                          text: 'MUN',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          )),
                    ]),
              ),
              SizedBox(
                height: 2.0,
              ),
              Text(
                'Learn, Book, Participate',
                style: robotoRegular(
                  size: 14.0,
                  color: Color(0xffB2B2B2),
                ),
              ),
              SizedBox(
                height: h * (448 / kScreenHeight),
              ),
              Container(
                height: h * (36 / kScreenHeight),
                width: w * (157 / kScreenWidth),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3.0),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(kBlueShade),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'sign_up');
                  },
                  child: Text(
                    'Sign Up',
                    style: robotoRegular(
                      size: 20.0,
                      color: Colors.white,
                    ).copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 13.0,
              ),
              Container(
                height: h * (36 / kScreenHeight),
                width: w * (157 / kScreenWidth),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3.0),
                  border: Border.all(color: kBlueShade),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(
                      BeveledRectangleBorder(
                        side: BorderSide(
                          color: kBlueShade,
                          width: 0.4,
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
                    style: robotoLight(
                      size: 20,
                      color: kBlueShade,
                    ).copyWith(
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: h * (88 / kScreenHeight),
              )
            ],
          ),
        ),
      ),
    );
  }
}
