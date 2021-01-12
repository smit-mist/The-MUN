import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isLoading = false, isVisible = false, isAccepted = false;
  final _auth = FirebaseAuth.instance;
  String name, email, password1, password2;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'BookMyMun',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Helvetica',
                    fontSize: 35,
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.05,
              ),
              Padding(
                padding: EdgeInsets.only(left: w * 0.075),
                child: Text(
                  'Create account',
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'Helvetica',
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Center(
                child: Container(
                  width: w * 0.85,
                  height: h * 0.3,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: TextField(
                            onChanged: (change) {
                              setState(() {
                                name = change;
                              });
                            },
                            decoration: InputDecoration(
                              hintStyle: TextStyle(
                                fontFamily: 'Helvetica',
                                fontSize: 18,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              hintText: 'Name',
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 2),
                              filled: true,
                              fillColor: Colors.grey.withOpacity(0.25),
                              focusColor: Colors.grey,
                            ),
                            cursorColor: Colors.black,
                          ),
                        ),
                        Container(
                          child: TextField(
                            cursorColor: Colors.black,
                            onChanged: (change) {
                              setState(() {
                                email = change;
                              });
                            },
                            decoration: InputDecoration(
                              hintStyle: TextStyle(
                                fontFamily: 'Helvetica',
                                fontSize: 18,
                              ),
                              hintText: 'Your email address',
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 2),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.grey.withOpacity(0.25),
                              focusColor: Colors.grey,
                            ),
                          ),
                        ),
                        Container(
                          //height: 70,
                          child: TextField(
                            cursorColor: Colors.black,
                            onChanged: (change) {
                              setState(() {
                                password1 = change;
                              });
                            },
                            obscureText: isVisible ? false : true,
                            decoration: InputDecoration(
                              hintStyle: TextStyle(
                                fontFamily: 'Helvetica',
                                fontSize: 18,
                              ),
                              hintText: 'Create Password',
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 2),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.grey.withOpacity(0.25),
                              focusColor: Colors.grey,
                            ),
                          ),
                        ),
                        Container(
                          child: TextField(
                            cursorColor: Colors.black,
                            onChanged: (change) {
                              setState(() {
                                password2 = change;
                              });
                            },
                            obscureText: isVisible ? false : true,
                            decoration: InputDecoration(
                              hintStyle: TextStyle(
                                fontFamily: 'Helvetica',
                                fontSize: 18,
                              ),
                              hintText: 'Confirm Password',
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 2),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.grey.withOpacity(0.25),
                              focusColor: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: h * 0.01,
              // ),
              Padding(
                padding: EdgeInsets.only(
                  left: (w * 0.075 - 12) < 0 ? 0 : (w * 0.075 - 12),
                ),
                child: Row(
                  children: [
                    Checkbox(
                      value: isVisible,
                      activeColor: Colors.blue,
                      onChanged: (bool newValue) {
                        setState(() {
                          isVisible = newValue;
                        });
                      },
                    ),
                    Text(
                      'Show Password',
                      style: TextStyle(fontFamily: 'Helvetica', fontSize: 14),
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  width: w * 0.85,
                  height: h * 0.055,
                  child: ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        isLoading = true;
                      });
                      try {
                        print('=============> here');
                        final User user =
                            (await _auth.createUserWithEmailAndPassword(
                                    email: email, password: password1))
                                .user;
                        setState(() {
                          isLoading = false;
                        });
                        Navigator.pushNamedAndRemoveUntil(
                            context, 'home', (route) => false);
                      } catch (e) {
                        print('==============>>');
                        print(e);
                        Scaffold.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Something went wrong'),
                          ),
                        );
                      }
                    },
                    child: Container(
                      width: w * 0.45,
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontFamily: 'Helvetic',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Visibility(
                  child: CircularProgressIndicator(
                    valueColor:
                        AlwaysStoppedAnimation<Color>(Color(0xFF2F2D52)),
                  ),
                  visible: isLoading,
                ),
              ),
              SizedBox(
                height: h * 0.01,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: (w * 0.075 - 12) < 0 ? 0 : (w * 0.075 - 12),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: isAccepted,
                      activeColor: Colors.blue,
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
                            "By creating account or logging in, you agree to BookMyMUN's ",
                            style: TextStyle(
                                fontFamily: 'Helvetica', fontSize: 12),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Conditions of Use ',
                              style: TextStyle(
                                fontFamily: 'Helvetica',
                                fontSize: 12,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Text(
                            'and',
                            style: TextStyle(
                                fontFamily: 'Helvetica', fontSize: 12),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              ' Privacy Policy',
                              style: TextStyle(
                                fontFamily: 'Helvetica',
                                fontSize: 12,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.05,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        fontFamily: 'Helvetica',
                        fontSize: 18,
                      ),
                    ),
                    GestureDetector(
                      child: Text(
                        ' Log In',
                        style: TextStyle(
                          fontFamily: 'Helvetica',
                          fontSize: 18,
                          color: Colors.blue,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('login');
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
// Container(
// width: w,
// height: h * 0.3,
// child: Column(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
//
//
// ],
// ),
// ),
