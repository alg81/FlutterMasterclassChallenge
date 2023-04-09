// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:tinder/views/SignInPage/mobile/background_signin_page.dart';
import 'package:tinder/views/SignInPage/mobile/foreground_signin_page.dart';

class MobileSignInPage extends StatelessWidget {
  const MobileSignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: <Widget>[
          BackgroundSigninPage(),
          Positioned(
            child: ForegroundSingninPage(),
          ),
        ],
      ),
    );
  }
}
