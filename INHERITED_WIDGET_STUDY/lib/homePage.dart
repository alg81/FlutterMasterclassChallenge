import 'package:flutter/material.dart';
import 'package:inheritedwidget_study/contador.dart';
import 'herdaContador.dart';
import 'main.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    var contexto =
        context.dependOnInheritedWidgetOfExactType<InheritedCounter>();
    final state =
        context.findAncestorStateOfType<EstudoInheritedWidgetState>()!;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Contador(
              //contador: state.conta,
              contador: contexto!.counter,
            ),
            ElevatedButton(
              onPressed: () {
                state.increment();
              },
              child: const Text('adicionar'),
            ),
            ElevatedButton(
              onPressed: () {
                state.decrement();
              },
              child: const Text('subtrair'),
            ),
          ],
        ),
      ),
    );
  }
}
