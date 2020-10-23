import 'package:flutter/widgets.dart';
import 'package:healthplus/menu/appointment.dart';
import 'package:healthplus/menu/emergency.dart';
import 'package:healthplus/menu/products.dart';
import 'package:healthplus/menu/services.dart';
import 'package:healthplus/screens/HOME/home.dart';
import 'package:healthplus/screens/HOME/homepage.dart';
import 'package:healthplus/screens/HOME/profilepage.dart';
import 'package:healthplus/screens/sign_in/sign_in_screen.dart';
import 'package:healthplus/screens/sign_in/sign_up/sign_up_screen.dart';
import 'package:healthplus/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ProfilePage.routeName: (context) => ProfilePage(),
  EmergencyPage.routeName: (context) => EmergencyPage(),
  HomePage.routeName: (context) => HomePage(),
  Appointment.routeName: (context) => Appointment(),
  Products.routeName: (context) => Products(),
  Services.routeName: (context) => Services(),
};
