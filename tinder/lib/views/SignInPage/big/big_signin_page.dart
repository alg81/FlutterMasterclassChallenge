import 'package:flutter/material.dart';
import 'package:tinder/views/SignInPage/mobile/mobile_signin_page.dart';

class BigSignInPage extends StatelessWidget {
  const BigSignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final width = mediaQuery.size.width;
    final height = mediaQuery.size.height;

    return SizedBox(
      width: width,
      child: Row(
        children: [
          Expanded(
            child: Container(
              // width: 100,
              // height: 100,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: width * 0.5,
            //child: const SingleChildScrollView(
            child: MobileSignInPage(),
            //),
          ),
        ],
      ),
    );
  }
}
