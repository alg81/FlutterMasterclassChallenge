import 'package:flutter/material.dart';
import 'package:tinder/views/SignInPage/mobile/agreementtext_signin_page.dart';
import 'package:tinder/views/SignInPage/mobile/buttons_signin_page.dart';
import 'package:tinder/views/SignInPage/mobile/logo_text_tinder.dart';
import 'package:tinder/views/SignInPage/mobile/trouble_signin_page.dart';

class ForegroundSingninPage extends StatefulWidget {
  const ForegroundSingninPage({super.key});

  @override
  State<ForegroundSingninPage> createState() => _ForegroundSingninPageState();
}

class _ForegroundSingninPageState extends State<ForegroundSingninPage> {
  @override
  Widget build(BuildContext context) {
    var deviceData = MediaQuery.of(context);
    double width = deviceData.size.width;
    double height = deviceData.size.height;

    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height * 0.4),
            const LogoTextTinder(),
            SizedBox(height: height * 0.1),
            SizedBox(
              width: 340,
              child: Column(
                children: [
                  const AgreementText(),
                  const ButtonsSigninPage(
                    logo: Icon(Icons.apple, color: Colors.white, size: 20),
                    text: 'SIGN IN WITH APPLE',
                    url: 'signin with apple',
                  ),
                  SizedBox(height: height * 0.01),
                  const ButtonsSigninPage(
                    logo: Icon(Icons.facebook, color: Colors.white, size: 20),
                    text: 'SIGN IN WITH FACEBOOK',
                    url: 'signin with facebook',
                  ),
                  SizedBox(height: height * 0.01),
                  const ButtonsSigninPage(
                    logo:
                        Icon(Icons.announcement, color: Colors.white, size: 20),
                    text: 'SIGN IN WITH PHONE NUMBER',
                    url: 'signin with phone number',
                  ),
                  SizedBox(height: height * 0.02),
                  const TroubleSigninPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
