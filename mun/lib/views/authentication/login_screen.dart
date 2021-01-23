import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mun/views/elements/textstyles.dart';
import 'package:mun/views/elements/widgets.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoading = false;
  bool isVisible = false;
  final _auth = FirebaseAuth.instance;
  String email = "", password = "";

  void logMeIn() async {
    setState(() {
      isLoading = true;
    });
    try {
      final user = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      setState(() {
        isLoading = false;
      });
      if (user != null) {
        Navigator.pushNamedAndRemoveUntil(context, 'home', (route) => false);
      }
    } catch (e) {
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('Something went wrong'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
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
                height: h * 0.1,
              ),
              Container(
                height: h * 0.15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: w * 0.85,
                      child: TextField(
                        cursorColor: Colors.black,
                        onChanged: (change) {
                          setState(() {
                            email = change;
                          });
                        },
                        decoration: textFieldDecoration('Email'),
                      ),
                    ),
                    Container(
                      width: w * 0.85,
                      child: TextField(
                        cursorColor: Colors.black,
                        onChanged: (change) {
                          setState(() {
                            password = change;
                          });
                        },
                        obscureText: isVisible ? false : true,
                        decoration: textFieldDecoration('Password'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: (w * 0.075 - 12) < 0 ? 0 : (w * 0.075 - 12),
                    right: (w * 0.075 - 5) < 0 ? 0 : (w * 0.075 - 5)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    Padding(
                      padding: const EdgeInsets.only(top: 18),
                      child: Text(
                        'Show Password',
                        style: simple(14),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'forgot_password');
                      },
                      child: Text(
                        'Forgot password?',
                        style: simple(14).copyWith(color: Colors.blue),
                      ),
                    )
                  ],
                ),
              ),
              NormalButton(
                function: logMeIn,
                width: w * 0.85,
                height: h * 0.05,
              ),
              Center(
                child: Visibility(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Color(0xFF2F2D52),
                    ),
                  ),
                  visible: isLoading,
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
                      "Don't have an account?",
                      style: simple(18),
                    ),
                    TextButton(
                      child: Text(
                        "Sign Up",
                        style: simple(18).copyWith(
                          color: Colors.blue,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('sign_up');
                      },
                    ),
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
