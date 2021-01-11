import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isLoading = false;
  final _auth = FirebaseAuth.instance;
  String name, email, password1, password2;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                Text(
                  'Create account',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Helvetica',
                  ),
                ),
                Container(
                  width: w,
                  height: h * 0.45,
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
                          child: TextField(
                            cursorColor: Colors.black,

                            onChanged: (change) {
                              setState(() {
                                password1 = change;
                              });
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Password',
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
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Verify Password',
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
                        Column(
                          children: [
                            ElevatedButton(
                              onPressed: () async {
                                setState(() {
                                  isLoading = true;
                                });
                                try {
                                  print('=============> here');
                                  final User user = (await _auth
                                          .createUserWithEmailAndPassword(
                                              email: email,
                                              password: password1))
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
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    Color(0xFF2F2D52)),
                              ),
                              visible: isLoading,
                            ),
                          ],
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Already have an account?"),
                              TextButton(
                                child: Text("Login"),
                                onPressed: () {
                                  Navigator.of(context).pushNamed('login');
                                },
                              ),
                            ],
                          ),
                        )
                      ],
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
