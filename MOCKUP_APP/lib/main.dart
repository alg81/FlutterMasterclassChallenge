import 'package:flutter/material.dart';
import 'package:mockup/controllers/controller_dark.dart';
import 'package:mockup/pages/main_home_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: DarkController.instance,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'MockupApp',
            theme: ThemeData(
              primarySwatch: Colors.teal,
              brightness: DarkController.instance.isdark
                  ? Brightness.dark
                  : Brightness.light,
            ),
            home: MainHomePage(),
          );
        });
  }
}
