import 'package:flutter/material.dart';

class CardElementTop extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var firstEndPoint = new Offset(size.width / 3 - 18, size.height / 3);
    var firstControlPoint =
        new Offset(size.width / 4 - 10, size.height - size.height / 3 - 5);
    var secondEndPoint = new Offset(size.width / 6, 0);
    var secondControlPoint = new Offset(size.width / 3, 10);
    var path = Path();
    path.lineTo(
      0,
      size.height / 2 + size.height / 4,
    );
    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstEndPoint.dx,
      firstEndPoint.dy,
    );

    path.quadraticBezierTo(
      secondControlPoint.dx,
      secondControlPoint.dy,
      secondEndPoint.dx,
      secondEndPoint.dy,
    );

    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
