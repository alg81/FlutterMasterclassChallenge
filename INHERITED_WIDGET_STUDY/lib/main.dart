import 'package:flutter/material.dart';
import 'package:inheritedwidget_study/herdaContador.dart';
import 'package:inheritedwidget_study/homePage.dart';

void main(List<String> args) {
  runApp(const EstudoInheritedWidget());
}

class EstudoInheritedWidget extends StatefulWidget {
  const EstudoInheritedWidget({super.key});

  @override
  State<EstudoInheritedWidget> createState() => EstudoInheritedWidgetState();
}

class EstudoInheritedWidgetState extends State<EstudoInheritedWidget> {
  final titulo = 'Estudo InheritedWidget';
  var conta = 0;

  increment() {
    setState(() {
      conta++;
    });
  }

  decrement() {
    setState(() {
      conta--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: titulo,
      //home: homePage(),
      home: InheritedCounter(
        counter: conta,
        child: const homePage(),
      ),
    );
  }
}
