import 'package:flutter/material.dart';

class CompactTextField extends StatelessWidget {
  const CompactTextField({
    Key? key,
    required this.textEditingController,
    required this.hintText,
  }) : super(key: key);
  final TextEditingController textEditingController;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: textEditingController,
        decoration: InputDecoration(
          hintText: hintText,
        ),
      ),
    );
  }
}
