import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/widget/button_widget.dart';
import 'package:flutter_firebase_auth/widget/compact_text_editing_controller.dart';

class EmailPasswordSignInScreen extends StatefulWidget {
  const EmailPasswordSignInScreen({super.key});
  static const String route = "/EmailSceenSignIn";

  @override
  State<EmailPasswordSignInScreen> createState() =>
      _EmailPasswordSignInScreenState();
}

class _EmailPasswordSignInScreenState extends State<EmailPasswordSignInScreen> {
  final TextEditingController _emailEditingController = TextEditingController();
  final TextEditingController _passwordEditingController =
      TextEditingController();

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
        title: const Text("Email Password Sign In"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Sign In",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          CompactTextField(
            textEditingController: _emailEditingController,
            hintText: "Enter email",
          ),
          const SizedBox(
            height: 40,
          ),
          CompactTextField(
            textEditingController: _passwordEditingController,
            hintText: "Enter Password",
          ),
          ButtonWidget(
            btnText: 'Login',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
