import 'package:flutter/material.dart';

class SignUpGoogle extends StatelessWidget {
  const SignUpGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        print('opcao do google clicada.');
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          width: width * 0.9,
          height: 50,
          alignment: Alignment.center,
          color: Colors.white,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageGoogle(),
              Text(
                'Sign Up with Google',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageGoogle extends StatelessWidget {
  const ImageGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 30,
        maxWidth: 30,
      ),
      child: Image.asset(
        'assets/google.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
