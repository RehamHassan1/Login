
import 'package:flutter/material.dart';

class Myclipp extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height / 1.25);
    path.cubicTo(size.width / 2 * .6, size.height * .5, size.width,
        size.height * 1.2, size.width * 1.2, size.height / 1.5);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

Future MyNavig({
  required BuildContext contx,
  required Widget widg,
}) {
  return Navigator.push(contx, MaterialPageRoute(builder: (context) {
    return widg;
  }));
}
