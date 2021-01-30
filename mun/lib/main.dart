import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mun/views/authentication/login_screen.dart';
import 'routes.dart';


// TODO : Color with hex code...
// TODO : Case management for user login/sign up (Email taken, Password Wrong, No internet Connection)
// TODO : All function of authentication in database.dart also save user into a user model
// TODO : Make Streams of Users
// TODO : File for MUNs
// TODO : Streams and model instance for MUN's
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The MUN',
      initialRoute: isUserLoggedIn() ? 'home' : 'login',
      routes: route_generator,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
    );
  }
}

bool isUserLoggedIn() {
  final user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    return true;
  }
  return false;
}
