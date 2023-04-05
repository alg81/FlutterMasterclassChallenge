import 'package:flutter/material.dart';
import 'package:screens/views/homepage/logo_item.dart';
import 'package:screens/views/homepage/first_text.dart';
import 'package:screens/views/homepage/second_text.dart';
import 'package:screens/views/homepage/signup_email.dart';
import 'package:screens/views/homepage/signup_google.dart';
import 'package:screens/views/homepage/signin.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Estudo de Telas',
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 8, 0, 0)),
      home: const Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(top: 200)),
            logoItem(),
            Padding(padding: EdgeInsets.only(top: 50)),
            FirstItemText(),
            Padding(padding: EdgeInsets.only(top: 20)),
            SecondItemText(),
            Padding(padding: EdgeInsets.only(top: 50)),
            SignUpEmail(),
            Padding(padding: EdgeInsets.only(top: 20)),
            SignUpGoogle(),
            Padding(padding: EdgeInsets.only(top: 50)),
            SignIn(),
          ],
        ),
      ),
    );
  }
}
