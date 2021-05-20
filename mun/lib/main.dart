import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mun/logic/mun_data.dart';
import 'package:mun/views/MUN/summary_of_booking_screen.dart';
import 'package:mun/views/authentication/login_screen.dart';
import 'package:mun/views/elements/constants.dart';
import 'package:provider/provider.dart';

import 'models/mun.dart';
import 'routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Mun>>.value(
      value: MunService().muns,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'The MUN',
        //initialRoute: isUserLoggedIn() ? 'home' : 'welcome',
        routes: routeGenerator,
        theme: ThemeData(
          scaffoldBackgroundColor: kBackgroundColor,
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: BookingSummary(),
      ),
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
