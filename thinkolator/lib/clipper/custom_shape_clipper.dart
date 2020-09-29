import 'package:flutter/material.dart';

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height);
    var firstEndPt = Offset(size.width * 0.50, size.height - 30);
    var firstContolPt = Offset(size.width * 0.25, size.height - 50);
    path.quadraticBezierTo(
        firstContolPt.dx, firstContolPt.dy, firstEndPt.dx, firstEndPt.dy);

    var secondEndPt = Offset(size.width, size.height - 120);
    var secondContolPt = Offset(size.width * 0.75, size.height - 10);
    path.quadraticBezierTo(
        secondContolPt.dx, secondContolPt.dy, secondEndPt.dx, secondEndPt.dy);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => true;
}
