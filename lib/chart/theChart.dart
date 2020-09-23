import 'dart:math';

import 'package:flutter/material.dart';

class TheChart extends CustomPainter {
  TheChart({@required this.catagory, @required this.width});

  final List<Catagories> catagory;
  final double width;
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);

    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = width / 2;
    double total = 0;
    catagory.forEach((expense) => total += expense.amount);
    double startRadian = -pi / 2;

    for (var index = 0; index < catagory.length; index++) {
      final abebe = catagory.elementAt(index);

      final sweepRadian = abebe.amount / total * 2 * pi;
      paint.color = kColorsList.elementAt(index % catagory.length);
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startRadian,
        sweepRadian,
        false,
        paint,
      );
      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class Catagories {
  Catagories(this.name, {@required this.amount});

  final String name;
  final double amount;
}

final kCatagories = [
  Catagories('Mobile Card', amount: 50.00),
  Catagories('Transport', amount: 150.00),
  Catagories('Snacks', amount: 15.00),
  Catagories('Bills', amount: 250.00),
  Catagories('House Rent', amount: 1000.00),
  Catagories('Food', amount: 2050.00),
];
final kColorsList = [
  Colors.blue,
  Colors.lightBlueAccent,
  Colors.green,
  Colors.orange,
  Colors.red,
  Colors.yellow,
];
