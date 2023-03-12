import 'package:flutter/material.dart';

class TopText {
  Widget GetStarted() {
    return Row(
      children: const [
        SizedBox(width: 20),
        Text(
          "Get Started",
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
