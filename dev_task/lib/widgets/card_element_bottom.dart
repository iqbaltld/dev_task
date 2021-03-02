import 'package:flutter/material.dart';

class CardElementBottom extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var firstEndPoint = new Offset(size.width / 3, size.height - 12);
    var firstControlPoint = new Offset(size.width / 3 - 2, size.height - 2);
    var secondEndPoint = new Offset(0, size.height / 2);
    var secondControlPoint =
        new Offset(size.width / 3 - 4, size.height / 2 + 5);
    var path = Path();
    path.lineTo(
      0,
      size.height,
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

    path.lineTo(0, size.height / 2);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
