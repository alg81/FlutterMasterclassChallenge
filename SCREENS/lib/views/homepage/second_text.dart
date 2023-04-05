import 'package:flutter/material.dart';

class SecondItemText extends StatelessWidget {
  const SecondItemText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 200,
      ),
      child: const Text(
        'Manage your expenses. Seamlessly',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 16,
        ),
      ),
    );
  }
}
