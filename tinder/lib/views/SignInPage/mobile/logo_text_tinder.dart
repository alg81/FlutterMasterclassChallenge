import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoTextTinder extends StatelessWidget {
  const LogoTextTinder({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Logo(),
        Text(
          'tinder',
          style: GoogleFonts.getFont(
            'Montserrat',
            textStyle: const TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontWeight: FontWeight.bold,
              fontSize: 40,
              letterSpacing: 0.1,
            ),
          ),
        ),
      ],
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomClipPath(),
      child: Container(
        color: Colors.white,
        constraints: const BoxConstraints(
          maxHeight: 40,
          maxWidth: 40,
        ),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.5923600, size.height * 0.0088667);
    path0.quadraticBezierTo(size.width * 0.7862400, size.height * 0.1856333,
        size.width * 0.8566400, size.height * 0.2958000);
    path0.cubicTo(
        size.width * 0.9130400,
        size.height * 0.3856333,
        size.width * 0.9360400,
        size.height * 0.4817000,
        size.width * 0.9284400,
        size.height * 0.5635333);
    path0.cubicTo(
        size.width * 0.9326000,
        size.height * 0.6308000,
        size.width * 0.8726000,
        size.height * 0.7239000,
        size.width * 0.8467200,
        size.height * 0.7656333);
    path0.cubicTo(
        size.width * 0.8157200,
        size.height * 0.8093000,
        size.width * 0.7536400,
        size.height * 0.8870333,
        size.width * 0.7034400,
        size.height * 0.9073667);
    path0.cubicTo(
        size.width * 0.6709600,
        size.height * 0.9365667,
        size.width * 0.6170400,
        size.height * 0.9570000,
        size.width * 0.5182400,
        size.height * 0.9635000);
    path0.cubicTo(
        size.width * 0.4562400,
        size.height * 0.9681667,
        size.width * 0.3279600,
        size.height * 0.9602000,
        size.width * 0.2963600,
        size.height * 0.9435333);
    path0.cubicTo(
        size.width * 0.2431600,
        size.height * 0.9320333,
        size.width * 0.1399600,
        size.height * 0.8570333,
        size.width * 0.1203600,
        size.height * 0.8202000);
    path0.cubicTo(
        size.width * 0.0821600,
        size.height * 0.7768667,
        size.width * 0.0509600,
        size.height * 0.6675333,
        size.width * 0.0475600,
        size.height * 0.6202000);
    path0.cubicTo(
        size.width * 0.0423600,
        size.height * 0.5635333,
        size.width * 0.0459600,
        size.height * 0.4595333,
        size.width * 0.0699600,
        size.height * 0.4148667);
    path0.cubicTo(
        size.width * 0.0863600,
        size.height * 0.3747000,
        size.width * 0.1151600,
        size.height * 0.3157000,
        size.width * 0.1419600,
        size.height * 0.2915333);
    path0.cubicTo(
        size.width * 0.1687600,
        size.height * 0.2527000,
        size.width * 0.2193600,
        size.height * 0.2210333,
        size.width * 0.2643600,
        size.height * 0.1962000);
    path0.cubicTo(
        size.width * 0.2699600,
        size.height * 0.2223667,
        size.width * 0.2691600,
        size.height * 0.2647000,
        size.width * 0.2739600,
        size.height * 0.3048667);
    path0.quadraticBezierTo(size.width * 0.2727600, size.height * 0.3470333,
        size.width * 0.3235600, size.height * 0.3802000);
    path0.quadraticBezierTo(size.width * 0.5143600, size.height * 0.3238667,
        size.width * 0.5523600, size.height * 0.2615333);
    path0.quadraticBezierTo(size.width * 0.6139600, size.height * 0.1903667,
        size.width * 0.5923600, size.height * 0.0088667);
    path0.close();

    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
