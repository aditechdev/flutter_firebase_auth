import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/services/firebase_auth_methods.dart';
import 'package:flutter_firebase_auth/widget/button_widget.dart';
import 'package:flutter_firebase_auth/widget/compact_text_editing_controller.dart';

class EmailPasswordSignUpScreen extends StatefulWidget {
  const EmailPasswordSignUpScreen({super.key});
  static const String route = "/EmailSceenSignUp";

  @override
  State<EmailPasswordSignUpScreen> createState() =>
      _EmailPasswordSignUpScreenState();
}

class _EmailPasswordSignUpScreenState extends State<EmailPasswordSignUpScreen> {
  final TextEditingController _emailEditingController = TextEditingController();
  final TextEditingController _passwordEditingController =
      TextEditingController();

  signUpUser() async {
    FirebaseAuthMethod(FirebaseAuth.instance).emailSignUp(
        email: _emailEditingController.text,
        password: _passwordEditingController.text,
        context: context);
  }

  @override
  void dispose() {
    super.dispose();
    _emailEditingController.dispose();
    _passwordEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Email Password Sign Up"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Sign Up",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          CompactTextField(
            textEditingController: _emailEditingController,
            hintText: "Enter email",
          ),
          CompactTextField(
            textEditingController: _passwordEditingController,
            hintText: "Enter Password",
          ),
          ButtonWidget(
            btnText: 'Sign UP',
            onTap: signUpUser,
          ),
        ],
      ),
    );
  }
}
