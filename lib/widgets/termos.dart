import 'package:flutter/material.dart';

class Termos extends StatelessWidget {
  const Termos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          text: "By tapping Create Account or Sign In, you agree to our",
          style: TextStyle(fontSize: 12, color: Colors.white54),
          children: [
            TextSpan(
              text: "Terms.",
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: " Learn how we process your data in our ",
            ),
            TextSpan(
              text: "Privacy",
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(text: " "),
            TextSpan(
              text: "Policy",
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: " and ",
            ),
            TextSpan(
              text: "Cookies Policy.",
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
