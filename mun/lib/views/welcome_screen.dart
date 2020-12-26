import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool isLoading = false;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "THE MUN",
          ),
        ),
      ),
      body: Center(
        child: Material(
          elevation: 20,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            width: w * 0.75,
            height: h * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('sign_up');
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
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('login');
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
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        setState(() {
                          isLoading = true;
                        });
                        final User user = await _signInWithGoogle();
                        if (user != null) {
                          setState(() {
                            isLoading = false;
                          });
                          Navigator.pushNamedAndRemoveUntil(context, 'home', (route) => false);
                        }
                      },
                      child: Container(
                        width: w * 0.45,
                        child: Center(
                          child: Text(
                            'Continue with Google',
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Color(0xFF2F2D52),
                        ),
                      ),
                      visible: isLoading,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<User> _signInWithGoogle() async {
    await _googleSignIn.signOut();
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);
    final User user = (await _auth.signInWithCredential(credential)).user;
    return user;
  }
}
