import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:healthplus/routes.dart';
import 'package:healthplus/screens/HOME/home.dart';
import 'package:healthplus/screens/sign_in/sign_in_screen.dart';
import 'package:healthplus/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  AsyncSnapshot userSnapShot;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HealthPlus-A Perfect HealthCare App',
      theme: theme(),
      // home: SplashScreen(),
      home: StreamBuilder(
        stream: FirebaseAuth.instance.onAuthStateChanged,
        builder: (context, userSnapShot) {
          if (userSnapShot.hasData) {
            return HomeScreen();
          }
          return SignInScreen();
        },
      ),
      routes: routes,
    );
  }
}
