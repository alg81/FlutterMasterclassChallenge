import 'package:flutter/material.dart';

class logoItem extends StatelessWidget {
  const logoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            const CirclePic(),
            const Padding(padding: EdgeInsets.only(top: 7)),
            ClipPath(
              clipper: CustomClipPath(),
              child: Container(
                color: const Color.fromARGB(255, 94, 92, 229),
                width: 50,
                height: 50,
              ),
            ),
          ],
        ),
        const Padding(padding: EdgeInsets.only(left: 10)),
        const WierdShape(),
      ],
    );
  }
}

class CirclePic extends StatelessWidget {
  const CirclePic({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        color: const Color.fromARGB(255, 94, 92, 229),
        width: 50,
        height: 50,
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // double w = size.width;
    // double h = size.height;

    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.quadraticBezierTo(size.width * 0.0962300, size.height * 1.0076597,
        size.width, size.height * 0.9999637);
    path0.cubicTo(size.width, size.height * 0.7499728, size.width * 0.9997500,
        size.height * 0.2495765, size.width, 0);
    path0.quadraticBezierTo(size.width * 0.7500000, 0, 0, 0);
    path0.close();

    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WierdShape extends StatelessWidget {
  const WierdShape({super.key});

  @override
  Widget build(Object context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(60.0),
        bottomLeft: Radius.circular(60.0),
      ),
      child: Container(
        alignment: Alignment.center,
        constraints: const BoxConstraints(
          maxWidth: 48,
          maxHeight: 108,
        ),
        color: const Color.fromARGB(255, 94, 92, 229),
      ),
    );
  }
}
