import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  String email = "", password = "";

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(' '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Login',
              style: Theme.of(context).textTheme.headline6,
            ),
            Material(
              elevation: 20,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: w * 0.75,
                height: h * 0.5,
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
                              password = change;
                            });
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.vpn_key),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: ()  async{
                          try {
                            final user = await  _auth.signInWithEmailAndPassword(
                                email: email, password: password);
                            final current = _auth.currentUser;
                            print(current.email);
                            print(current.displayName);
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
                        },
                        child: Container(
                          width: w * 0.45,
                          child: Center(
                            child: Text(
                              'Login',
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?"),
                            TextButton(
                              child: Text("Sign Up"),
                              onPressed: () {
                                Navigator.of(context).pushNamed('sign_up');
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
