import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.btnText,
    required this.onTap,
  }) : super(key: key);

  final String btnText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width,
          // height: 100,
          color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
                child: Text(
              btnText,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            )),
          ),
        ),
      ),
    );
  }
}
