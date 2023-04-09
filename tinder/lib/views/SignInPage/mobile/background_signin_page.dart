import 'package:flutter/material.dart';

class BackgroundSigninPage extends StatefulWidget {
  const BackgroundSigninPage({
    Key? key,
  }) : super(key: key);

  @override
  State<BackgroundSigninPage> createState() => _BackgroundPageState();
}

class _BackgroundPageState extends State<BackgroundSigninPage> {
  @override
  Widget build(BuildContext context) {
    var deviceData = MediaQuery.of(context);
    double width = deviceData.size.width;
    double height = deviceData.size.height;

    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          radius: 1.9,

          center: Alignment.bottomLeft,
          // begin: Alignment.bottomLeft,
          // end: Alignment.topRight,
          colors: [
            Color.fromRGBO(233, 73, 118, 1),
            Color.fromRGBO(236, 114, 97, 1)
          ],
        ),
      ),
    );
  }
}
