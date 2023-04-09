import 'package:flutter/material.dart';

class AgreementText extends StatelessWidget {
  const AgreementText({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height: 100,
      child: FirstText(),
    );
  }
}

class FirstText extends StatelessWidget {
  const FirstText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          children: [
            TextSpan(
              text: 'By tapping Create Account or Sign In, you agree to our ',
              style: TextStyle(
                color: Colors.white,
                //fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: 'Terms',
              style: TextStyle(
                color: Colors.white,
                //fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
            TextSpan(
              text: '. Learn how we process your data in our ',
              style: TextStyle(
                color: Colors.white,
                //fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: 'Privacy Police',
              style: TextStyle(
                color: Colors.white,
                //fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
            TextSpan(
              text: ' and ',
              style: TextStyle(
                color: Colors.white,
                //fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: 'Cookies Policy',
              style: TextStyle(
                color: Colors.white,
                //fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
            TextSpan(
              text: '.',
              style: TextStyle(
                color: Colors.white,
                //fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
