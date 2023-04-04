import 'package:flutter/material.dart';

class InheritedCounter extends InheritedWidget {
  final int counter;

  const InheritedCounter({
    super.key,
    required super.child,
    required this.counter,
  });

  @override
  bool updateShouldNotify(covariant InheritedCounter oldWidget) => true;
  // (oldWidget.counter < counter);
}
