import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/email_password_sign_in.dart';
import 'package:flutter_firebase_auth/email_password_sign_up.dart';
import 'package:flutter_firebase_auth/home_screen.dart';
import 'package:flutter_firebase_auth/phone_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
      routes: {
        EmailPasswordSignUpScreen.route: (context) =>
            const EmailPasswordSignUpScreen(),
        EmailPasswordSignInScreen.route: (context) =>
            const EmailPasswordSignInScreen(),
        PhoneScreen.route: (context) => const PhoneScreen(),
      },
    );
  }
}
