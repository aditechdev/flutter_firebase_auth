import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/email_password_sign_in.dart';
import 'package:flutter_firebase_auth/email_password_sign_up.dart';
import 'package:flutter_firebase_auth/phone_screen.dart';
import 'package:flutter_firebase_auth/widget/button_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    navigateToOtherPage(String routeName) {
      Navigator.pushNamed(context, routeName);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Firebase Auth"),
      ),
      body: Column(
        children: [
          ButtonWidget(
            btnText: 'Email Password SignUP',
            onTap: () => navigateToOtherPage(EmailPasswordSignUpScreen.route),
          ),
          ButtonWidget(
            btnText: 'Email Password Log In',
            onTap: () => navigateToOtherPage(EmailPasswordSignInScreen.route),
          ),
          ButtonWidget(
            btnText: 'Phone Sign In',
            onTap: () => navigateToOtherPage(PhoneScreen.route),
          ),
          ButtonWidget(
            btnText: 'Google Sign In',
            onTap: () {},
          ),
          ButtonWidget(
            btnText: 'Facebook Sign In',
            onTap: () {},
          ),
          ButtonWidget(
            btnText: 'Anonumous Sign In',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
