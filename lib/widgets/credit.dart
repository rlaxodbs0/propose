import 'package:flutter/material.dart';

class Credit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      child: Text(
        "© Built with Flutter Web",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 10, color: Colors.black38),
      ),
    );
  }
}