import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Already have an account? ',
          style: TextStyle(color: Colors.white),
        ),
        GestureDetector(
          onTap: () {
            print('SignIn clicado.');
          },
          child: RichText(
            text: const TextSpan(
              //style: DefaultTextStyle.of(context).style,
              style: TextStyle(color: Colors.white),
              children: <TextSpan>[
                TextSpan(
                  text: 'Sign In',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ],
            ),
          ),
        ),
      ],
    ); //
  }
}
