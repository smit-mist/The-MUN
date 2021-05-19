import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mun/logic/auth.dart';
import 'package:mun/views/authentication/forgot_password_screen.dart';
import 'package:mun/views/elements/constants.dart';
import 'package:mun/views/elements/textstyles.dart';
import 'package:mun/views/elements/widgets.dart';
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
            body: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                        height: h * 0.025,
                      ),
                      Form(
                        key: _key,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: h * 0.055,
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
                                decoration: textFieldDecoration('Email id'),
                              ),
                            ),
                            SizedBox(
                              height: h * 0.015,
                            ),
                            Container(
                              height: h * 0.055,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      validator: (value) {
                                        return (value.isEmpty ||
                                                value.length < 8)
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
                                      decoration:
                                          textFieldDecoration('Password'),
                                    ),
                                  ),
                                  Container(
                                    color: Colors.grey.withOpacity(0.1),
                                    child: IconButton(
                                        icon: Icon(
                                          Icons.remove_red_eye_sharp,
                                          color: kBlueShade,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            isVisible = true;
                                          });
                                        }),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: h * 0.02,
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
                                  style: simple(12).copyWith(
                                    color: kBlueShade,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: h * 0.06,
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: h * 0.04,
                                width: w * 0.25,
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
                                    style: simple(18).copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  ),
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
            ),
          );
  }
}
