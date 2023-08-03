import 'package:flutter/material.dart';

class BottomContainerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var circleStrokePaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;
    canvas.drawCircle(
      Offset(
        size.width / 2,
        size.height / 8 * 3,
      ),
      size.width / 6,
      circleStrokePaint,
    );

    Paint rectangleFillPaint = Paint()
      ..color = Colors.red
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 2
      ..style = PaintingStyle.fill;
    Path rectangleFillPath = Path()
      ..moveTo(0, size.height / 2)
      ..lineTo(size.width, size.height / 2)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..moveTo(0, size.height / 2)
      ..close();
    canvas.drawPath(rectangleFillPath, rectangleFillPaint);

    Paint rectangleStrokePaint = Paint()
      ..color = Colors.white
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;
    Path rectangleStrokePath = Path()
      ..moveTo(0, size.height / 2)
      ..lineTo(size.width / 3, size.height / 2)
      ..lineTo(size.width / 3, size.height / 2)
      ..lineTo(size.width, size.height / 2)
      ..close();
    canvas.drawPath(
      rectangleStrokePath,
      rectangleStrokePaint,
    );

    var circleFillPaint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;
    canvas.drawCircle(
      Offset(
        size.width / 2,
        size.height / 8 * 3,
      ),
      size.width / 6,
      circleFillPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
