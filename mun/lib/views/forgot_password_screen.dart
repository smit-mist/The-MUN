import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  bool isLoading = false;
  String email;
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
                height: h * 0.1,
              ),
              Container(
                padding: EdgeInsets.only(left: w * 0.075),
                child: Text(
                  'Password Assistance',
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'Helvetica',
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.03,
              ),
              Center(
                child: Container(
                  width: w * 0.85,
                  height: h * 0.3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Enter the email address associated with your',
                        style: TextStyle(
                          fontFamily: 'Helvetica',
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: h * 0.0075,
                      ),
                      Text(
                        'BookMyMUN account.',
                        style: TextStyle(
                          fontFamily: 'Helvetica',
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: h * 0.03,
                      ),
                      TextField(
                        onChanged: (change) {
                          setState(() {
                            email = change;
                          });
                        },
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            fontFamily: 'Helvetica',
                            fontSize: 16,
                            color: Color(0xff707070),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          hintText: 'Your email address',
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0.15),
                          focusColor: Colors.grey,
                        ),
                        cursorColor: Colors.black,
                      ),
                      SizedBox(
                        height: h * 0.02,
                      ),
                      Center(
                        child: isLoading
                            ? CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    Color(0xFF2F2D52)),
                              )
                            : Container(
                                width: w * 0.85,
                                height: h * 0.055,
                                child: ElevatedButton(
                                  onPressed: () async {
                                    print(email);
                                    setState(() {
                                      isLoading = true;
                                    });
                                    print(email);
                                    try {
                                      print('=============> here');
                                      await _auth
                                          .sendPasswordResetEmail(email: email)
                                          .then((value) => {
                                                showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context1) {
                                                    return AlertDialog(
                                                      title: Text(
                                                        'Email sent successfully',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'Helvetica',
                                                          fontSize: 16,
                                                          color:
                                                              Color(0xff707070),
                                                        ),
                                                      ),
                                                      content: Text(
                                                        'A password reset email has been sent to the provided email',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'Helvetica',
                                                          fontSize: 16,
                                                          color:
                                                              Color(0xff707070),
                                                        ),
                                                      ),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () {
                                                            Navigator.pushNamedAndRemoveUntil(context,'login', (route) => false);
                                                          },
                                                          child: Text(
                                                            'Done',
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Helvetica',
                                                              fontSize: 16,
                                                              color: Color(
                                                                0xff707070,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                ),
                                              });
                                      setState(() {
                                          email = "";

                                        isLoading = false;
                                      });
                                    } catch (e) {
                                      print('catch block');
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
                                        'Continue',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Helvetica',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                      ),
                      SizedBox(
                        height: h * 0.04,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Back',
                            style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
