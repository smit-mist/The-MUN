import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mun/logic/auth.dart';
import 'package:mun/logic/database.dart';
import 'package:mun/models/mun_user.dart';
import 'package:mun/views/elements/constants.dart';
import 'package:mun/views/elements/textstyles.dart';
import 'package:mun/views/elements/widgets.dart';
import 'package:mun/views/elements/widgets/loading.dart';
import 'package:mun/views/elements/widgets/logo.dart';
import 'file:///C:/Users/smit3/AndroidStudioProjects/The-MUN/mun/lib/unused/select_city_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
// TODO: Width of line between confirm password and password
class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  Database database = Database();
  GlobalKey<FormState> _key = GlobalKey<FormState>();
  bool isLoading = false, isVisible = false, isAccepted = false;
  final _auth = AuthService();
  String name, email, password1, password2;

  void signMeUp() async {
    if (_key.currentState.validate()) {
      setState(() {
        isLoading = true;
      });
      final MUNUser user = await _auth.signUp(email, password1);
      if (user != null) {
        await database.addUser(email, name, user.uid);
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('uid', user.uid);
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => SelectCityScreen()),
          (route) => false,
        );
      } else {
        setState(() {
          isLoading = false;
        });
        Fluttertoast.showToast(
          msg: 'Something went wrong',
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
            body: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(h * 0.015),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MUNLogo(),
                      SizedBox(
                        height: h * 0.05,
                      ),
                      Text(
                        'Create a New Account',
                        style: simple(24),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Divider(
                          color: Colors.black54,
                        ),
                      ),
                      Center(
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: EdgeInsets.all(h * 0.01),
                            child: Center(
                              child: Form(
                                key: _key,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: h * 0.055,
                                      child: TextFormField(
                                        validator: (value) {
                                          return value.isEmpty
                                              ? 'Enter a proper username'
                                              : null;
                                        },
                                        onChanged: (change) {
                                          setState(() {
                                            name = change;
                                          });
                                        },
                                        decoration:
                                            textFieldDecoration(' Your Name'),
                                        cursorColor: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: h * 0.025,
                                    ),
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
                                        decoration:
                                            textFieldDecoration('Email id'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: h * 0.025,
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
                                                    password1 = change;
                                                  });
                                                },
                                                obscureText:
                                                    isVisible ? false : true,
                                                decoration: textFieldDecoration(
                                                    'Password')),
                                          ),
                                          Container(
                                            color: Colors.grey.withOpacity(0.1),
                                            child: IconButton(
                                                icon: Icon(
                                                  Icons.remove_red_eye_sharp,
                                                  color: Colors.blue,
                                                ),
                                                onPressed: () {
                                                  setState(() {
                                                    isVisible = true;
                                                  });
                                                }),
                                          ),
                                        ],
                                      ),
                                      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[350])),)
                                    ),
                                    Container(
                                      height: h * 0.055,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                            child: TextFormField(
                                              cursorColor: Colors.black,
                                              onChanged: (change) {
                                                setState(() {
                                                  password2 = change;
                                                });
                                              },
                                              obscureText:
                                                  isVisible ? false : true,
                                              decoration: textFieldDecoration(
                                                  'Confirm Password'),
                                              validator: (value) {
                                                return (password2 != password1)
                                                    ? 'Passwords don\'t match'
                                                    : null;
                                              },
                                            ),
                                          ),
                                          Container(
                                            color: Colors.grey.withOpacity(0.1),
                                            child: IconButton(
                                                icon: Icon(
                                                  Icons.remove_red_eye_sharp,
                                                  color: Colors.blue,
                                                ),
                                                onPressed: () {
                                                  setState(() {
                                                    isVisible = true;
                                                  });
                                                }),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Password should be atleast 6 characters long and should include atleast 1 special character. Ex: @,\$,%,&,!.',
                          style: simple(12).copyWith(color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      FormField(
                        validator: (value) {
                          return (!isAccepted)
                              ? 'Please accept the terms and conditions'
                              : null;
                        },
                        builder: (state) {
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Checkbox(
                                value: isAccepted,
                                activeColor: kBlueShade,
                                onChanged: (bool newValue) {
                                  setState(() {
                                    isAccepted = newValue;
                                  });
                                },
                              ),
                              Container(
                                width: w * 0.8,
                                child: Wrap(
                                  children: [
                                    Text(
                                      "By creating an account, I agree to bookmyMUN’s ",
                                      style: simple(13).copyWith(
                                          fontWeight: FontWeight.w400),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Text(
                                        'Conditions of Use ',
                                        style: simple(13).copyWith(
                                          color: kBlueShade,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'and',
                                      style: simple(13),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Text(
                                        ' Privacy Policy',
                                        style: simple(13).copyWith(
                                          color: kBlueShade,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      SizedBox(
                        height: h * 0.015,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: h * 0.04,
                          width: w * 0.3,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(kBlueShade),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, 'home');
                            },
                            child: Text(
                              'Sign Up',
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
              ),
            ),
          );
  }
}
// height: h * 0.04,
// width: w * 0.3
