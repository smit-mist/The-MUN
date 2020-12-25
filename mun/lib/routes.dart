import 'package:flutter/material.dart';
import 'package:mun/views/login_screen.dart';
import 'package:mun/views/signup_screen.dart';
import 'package:mun/views/welcome_screen.dart';

Map<String,Widget Function(BuildContext)> route_generator = {
  'welcome':(context)=>WelcomeScreen(),
  'login':(context)=>LoginScreen(),
  'sign_up':(context)=>SignUpScreen(),
};