import 'package:flutter/material.dart';

class Contador extends StatelessWidget {
  const Contador({super.key, required this.contador});

  final int contador;

  @override
  Widget build(BuildContext context) {
    return Text('$contador');
  }
}
