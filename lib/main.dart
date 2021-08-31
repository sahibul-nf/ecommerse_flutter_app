import 'package:ecommerse_flutter_app/ui/pages/pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/interest",
      title: 'Ecommerse',
      // home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        "/splashscreen": (context) => SplashScreen(),
        "/main": (BuildContext context) => MainPage(),
        "/home": (BuildContext context) => HomePage(),
        "/cart": (context) => CartPage(),
        "/checkout": (context) => CheckOutPage(),
        "/login": (context) => LoginPage(),
        "/register": (context) => RegisterPage(),
        "/user": (context) => UserPage(),
        "/onboarding": (context) => OnBoardingPage(),
        "/started": (context) => GetStarted(),
        "/interest": (context) => InterestPage(),
      },
    );
  }
}