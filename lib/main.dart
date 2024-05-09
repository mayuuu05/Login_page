import 'package:flutter/material.dart';
import 'package:login_page/Screens/Intro/introScreen.dart';
import 'package:login_page/Screens/Login%20page/login.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      routes: {
        '/':(context) => IntroScreen(),
        '/login':(context) => LoginPage(),

      },
    );
  }
}
