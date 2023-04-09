import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tinder/views/SignInPage/mobile/mobile_signin_page.dart';
import 'package:tinder/views/SignInPage/big/big_signin_page.dart';

void main() {
  runApp(const TinderScreen());
}

class TinderScreen extends StatelessWidget {
  const TinderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final width = mediaQuery.size.width;
    final height = mediaQuery.size.height;

    final isWidthBiggerThanHeight = width > 830;
    final bool isBigDevice = isWidthBiggerThanHeight;

    return MaterialApp(
      title: 'MockupTinder',
      debugShowCheckedModeBanner: false,
      home: isBigDevice ? const BigSignInPage() : const MobileSignInPage(),
      //home: BigSignInPage(),
    );
  }
}
