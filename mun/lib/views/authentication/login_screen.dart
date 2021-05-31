import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mun/logic/auth.dart';
import 'package:mun/views/authentication/forgot_password_screen.dart';
import 'package:mun/views/elements/constants.dart';
import 'package:mun/views/elements/textstyles.dart';
import 'package:mun/views/elements/widgets/loading.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _key = GlobalKey<FormState>();
  bool isLoading = false;
  bool isVisible = false;
  final _auth = AuthService();
  String email = "", password = "";

  void logMeIn() async {
    if (_key.currentState.validate()) {
      setState(() {
        isLoading = true;
      });
      final user = await _auth.signIn(email, password);
      if (user != null) {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('uid', user.uid);
        Navigator.pushNamedAndRemoveUntil(context, 'home', (route) => false);
      } else {
        setState(() {
          isLoading = false;
        });
        Fluttertoast.showToast(
          msg: 'Invalid username or password',
          fontSize: 16.0,
          gravity: ToastGravity.BOTTOM,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return isLoading
        ? Loading()
        : Scaffold(
            backgroundColor: Colors.white,
            body: Container(
              height: h,
              width: w,
              padding: EdgeInsets.symmetric(
                horizontal: w * (24 / kScreenWidth),
              ),
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: h * (235 / kScreenHeight),
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
                      height: 18.0,
                    ),
                    Form(
                      key: _key,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: h * (40 / kScreenHeight),
                            decoration: BoxDecoration(
                              color: kGreyShade,
                              borderRadius: BorderRadius.circular(3.0),
                            ),
                            child: TextFormField(
                              validator: (value) {
                                return (value.isEmpty ||
                                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                            .hasMatch(value))
                                    ? 'Enter a valid email'
                                    : null;
                              },
                              cursorColor: Colors.black,
                              onChanged: (change) {
                                setState(() {
                                  email = change;
                                });
                              },
                              decoration: InputDecoration(
                                hintStyle: robotoRegular(
                                  size: 12.0,
                                  color: Colors.black.withOpacity(0.3),
                                ).copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                                hintText: 'Email id',
                                contentPadding:
                                    EdgeInsets.fromLTRB(13.0, 14.0, 0, 15.0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            height: h * (40 / kScreenHeight),
                            decoration: BoxDecoration(
                              color: kGreyShade,
                              borderRadius: BorderRadius.circular(3.0),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    validator: (value) {
                                      return (value.isEmpty || value.length < 8)
                                          ? 'Invalid Password'
                                          : null;
                                    },
                                    cursorColor: Colors.black,
                                    onChanged: (change) {
                                      setState(() {
                                        password = change;
                                      });
                                    },
                                    obscureText: isVisible ? false : true,
                                    decoration: InputDecoration(
                                      hintStyle: robotoRegular(
                                        size: 12.0,
                                        color: Colors.black.withOpacity(0.3),
                                      ).copyWith(
                                        fontWeight: FontWeight.w400,
                                      ),
                                      hintText: 'Password',
                                      contentPadding: EdgeInsets.fromLTRB(
                                        13.0,
                                        14.0,
                                        0,
                                        12.0,
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(3),
                                        borderSide: BorderSide(
                                          width: 0,
                                          style: BorderStyle.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: w * (198 / kScreenWidth),
                                ),
                                GestureDetector(
                                  child: isVisible
                                      ? SvgPicture.asset(
                                          'assets/icons/eye_regular.svg',
                                          color: kBlueShade,
                                        )
                                      : SvgPicture.asset(
                                          'assets/icons/eye_closed.svg',
                                          color: kBlueShade,
                                        ),
                                  onTap: () {
                                    setState(() {
                                      isVisible = !isVisible;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 11.0,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForgotPassword(),
                            ),
                          );
                        },
                        child: Text(
                          'Forgot Password ?',
                          style: robotoLight(
                            size: 10.0,
                            color: kBlueShade,
                          ).copyWith(fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: h * (57 / kScreenHeight),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: h * (30 / kScreenHeight),
                        width: w * (80 / kScreenWidth),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(kBlueShade),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, 'home');
                          },
                          child: Text(
                            'Log In',
                            style: robotoRegular(
                              size: 16.0,
                              color: Colors.white,
                            ).copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: h * (329 / kScreenHeight),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
