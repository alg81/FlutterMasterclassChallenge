import 'package:flutter/material.dart';

class TroubleSigninPage extends StatefulWidget {
  const TroubleSigninPage({super.key});

  @override
  State<TroubleSigninPage> createState() => _TroubleSigninPageState();
}

class _TroubleSigninPageState extends State<TroubleSigninPage> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      'Trouble Signing In?',
      style: TextStyle(color: Colors.white),
    );
  }
}
