import 'package:flutter/material.dart';
import 'package:mun/views/booking_mun/extra_details_screen.dart';
import 'package:mun/views/authentication/forgot_password_screen.dart';
import 'package:mun/views/authentication/login_screen.dart';
import 'package:mun/views/authentication/signup_screen.dart';
import 'package:mun/views/home/home_tabbar.dart';

Map<String, Widget Function(BuildContext)> route_generator = {
 'login': (context) => LoginScreen(),
  'sign_up': (context) => SignUpScreen(),
  'home': (context) => HomeTabBar(),
  'forgot_password': (context) => ForgotPassword(),
  'extra_details':(context)=>ExtraDetails(),
};
