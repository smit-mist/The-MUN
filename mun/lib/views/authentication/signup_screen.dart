import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mun/logic/auth.dart';
import 'package:mun/logic/database.dart';
import 'package:mun/models/mun_user.dart';
import 'package:mun/unused/select_city_screen.dart';
import 'package:mun/views/elements/constants.dart';
import 'package:mun/views/elements/textstyles.dart';
import 'package:mun/views/elements/widgets/loading.dart';
import 'package:mun/views/elements/widgets/logo.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
            body: Container(
              color: Colors.white,
              height: h,
              width: w,
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: w * (25 / kScreenWidth)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: h * (74 / kScreenHeight),
                      ),
                      MUNLogo(),
                      SizedBox(
                        height: h * (24 / kScreenHeight),
                      ),
                      Text(
                        'Create a New Account',
                        style: robotoLight(
                          size: 25.0,
                          color: Colors.black,
                        ),
                      ),
                      Divider(
                        color: Colors.black.withOpacity(0.3),
                      ),
                      Form(
                        key: _key,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              color: kGreyShade,
                              height: h * (38 / kScreenHeight),
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
                                decoration: InputDecoration(
                                  hintStyle: robotoRegular(
                                    size: 12.0,
                                    color: Colors.black.withOpacity(0.3),
                                  ),
                                  hintText: 'Your Name',
                                  contentPadding:
                                      EdgeInsets.fromLTRB(14.0, 12.0, 0, 12.0),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(3),
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                ),
                                cursorColor: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              color: kGreyShade,
                              height: h * (38 / kScreenHeight),
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
                                decoration: InputDecoration(
                                  hintStyle: robotoRegular(
                                    size: 12.0,
                                    color: Colors.black.withOpacity(0.3),
                                  ),
                                  hintText: 'Email id',
                                  contentPadding:
                                      EdgeInsets.fromLTRB(14.0, 13.0, 0, 11.0),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(3),
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                ),
                                cursorColor: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              height: h * (38 / kScreenHeight),
                              decoration: BoxDecoration(
                                color: kGreyShade,
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.grey[350],
                                  ),
                                ),
                              ),
                              child: Row(
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
                                      obscureText: isVisible ? false : true,
                                      decoration: InputDecoration(
                                        hintStyle: robotoRegular(
                                          size: 12.0,
                                          color: Colors.black.withOpacity(0.3),
                                        ),
                                        hintText: 'Password',
                                        contentPadding: EdgeInsets.fromLTRB(
                                          14.0,
                                          9.0,
                                          0,
                                          h * (36 / kScreenHeight),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(3),
                                          borderSide: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: w * (199 / kScreenWidth),
                                  ),
                                  GestureDetector(
                                  child: SvgPicture.asset(
                                    'assets/icons/eye_regular.svg',
                                    color: kBlueShade,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      isVisible = true;
                                    });
                                  },
                                ),
                                SizedBox(width: 4.0,),
                                ],
                              ),
                            ),
                            Container(
                              height: h * (38 / kScreenHeight),
                              decoration: BoxDecoration(
                                color: kGreyShade,
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.grey[350],
                                  ),
                                ),
                              ),
                              child: Row(
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
                                      obscureText: isVisible ? false : true,
                                      decoration: InputDecoration(
                                        hintStyle: robotoRegular(
                                          size: 12.0,
                                          color: Colors.black.withOpacity(0.3),
                                        ),
                                        hintText: 'Confirm Password',
                                        contentPadding: EdgeInsets.fromLTRB(
                                          14.0,
                                          9.0,
                                          0,
                                          h * (36 / kScreenHeight),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(3),
                                          borderSide: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: w * (170 / kScreenWidth),
                                  ),
                                  GestureDetector(
                                  child: SvgPicture.asset(
                                    'assets/icons/eye_regular.svg',
                                    color: kBlueShade,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      isVisible = true;
                                    });
                                  },
                                ),
                                SizedBox(width: 4.0,),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: h * (23 / kScreenHeight),
                      ),
                      Text(
                        'Password should be atleast 6 characters long and should include atleast 1 special character. Ex: @,\$,%,&,!.',
                        style: robotoRegular(
                          size: 11.0,
                          color: Color(0xffC7C7C7),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: w * 0.77,
                            child: Wrap(
                              children: [
                                Text(
                                  "By creating an account, I agree to MyNextMUN's ",
                                  style: robotoLight(
                                    size: 13.0,
                                    color: Colors.black,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    'Conditions of Use ',
                                    style: robotoLight(
                                      size: 13.0,
                                      color: kBlueShade,
                                    ),
                                  ),
                                ),
                                Text(
                                  'and',
                                  style: robotoLight(
                                    size: 13.0,
                                    color: Colors.black,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    ' Privacy Policy',
                                    style: robotoLight(
                                      size: 13.0,
                                      color: kBlueShade,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * (32 / kScreenHeight),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: h * (30 / kScreenHeight),
                          width: w * (95 / kScreenWidth),
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
            ),
          );
  }
}
// height: h * 0.04,
// width: w * 0.3
