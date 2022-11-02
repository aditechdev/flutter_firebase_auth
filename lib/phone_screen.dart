import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/widget/button_widget.dart';
import 'package:flutter_firebase_auth/widget/compact_text_editing_controller.dart';

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({super.key});
  static const String route = "/phoneScreen";

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  final TextEditingController _phoneEditingController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _phoneEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Phone Sign In"),
      ),
      body: Column(
        children: [
          CompactTextField(
            textEditingController: _phoneEditingController,
            hintText: "Enter Phone Number",
          ),
          ButtonWidget(
            btnText: 'Send OTP',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
