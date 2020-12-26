import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> with TickerProviderStateMixin {
  bool isLoading = false;
  final _auth = FirebaseAuth.instance;
  String name, email, password1, password2;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(' '),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Sign Up',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(
                height: h * 0.05,
              ),
              Container(
                width: w * 0.85,
                height: h * 0.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black),
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: w * 0.6,
                        child: TextField(
                          onChanged: (change) {
                            setState(() {
                              name = change;
                            });
                          },
                          decoration: InputDecoration(
                            labelText: 'Name',
                            prefixIcon: Icon(Icons.account_circle),
                          ),
                        ),
                      ),
                      Container(
                        width: w * 0.6,
                        child: TextField(
                          onChanged: (change) {
                            setState(() {
                              email = change;
                            });
                          },
                          decoration: InputDecoration(
                            labelText: 'Email',
                            prefixIcon: Icon(Icons.email),
                          ),
                        ),
                      ),
                      Container(
                        width: w * 0.6,
                        child: TextField(
                          onChanged: (change) {
                            setState(() {
                              password1 = change;
                            });
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.vpn_key),
                          ),
                        ),
                      ),
                      Container(
                        width: w * 0.6,
                        child: TextField(
                          onChanged: (change) {
                            setState(() {
                              password2 = change;
                            });
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Verify Password',
                            prefixIcon: Icon(Icons.vpn_key_sharp),
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
                                final User user = (await _auth.createUserWithEmailAndPassword(
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
                                ),
                              ),
                            ),
                          ),
                          isLoading
                              ? SpinKitCircle(
                                  color: Colors.tealAccent,
                                  size: 50.0,
                                  controller: AnimationController(
                                      vsync: this, duration: const Duration(milliseconds: 1200)),
                                )
                              : Column(),
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
    );
  }
}
