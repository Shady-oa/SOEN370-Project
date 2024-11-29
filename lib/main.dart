//import 'package:firebase/login.dart';

import 'package:firebase/auth_page.dart';
import 'package:firebase/balance.dart';
import 'package:firebase/bottomnav.dart';
import 'package:firebase/forgot_pwd_page.dart';
import 'package:firebase/hme.dart';
//import 'package:firebase/home_page.dart';
import 'package:firebase/income.dart';
import 'package:firebase/login.dart';
import 'package:firebase/main_page.dart';
//import 'package:firebase/main_page.dart';
import 'package:firebase/single_budget.dart';
import 'package:firebase/single_saving.dart';
import 'package:firebase/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase/home.dart';


void main() async {
  // Initialize Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // Run your app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  bool name() {
    return true;
  }

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),//MainPage(), //main page
      routes: {
        '/homepage': (context) => HomePage(),
        '/forgotpassword': (context) => ForgotPasswordPage(),
        '/auth': (context) => AuthPage(),
        '/home': (context) => Home(),
        '/singlebudget': (context) => SingleBudget(),
        '/singlesaving': (context) => SingleSaving(),
        '/balance': (context) => BalancePage(),
        '/login': (context) => Login(showSignupPage: () => true),
        '/navigation':(context) => BottomNavigation(),
        '/mainpage':(context) => MainPage(),
        '/income':(context) => Income(),
      },
    );
  }
}
