import 'package:flutter/material.dart';

class DashboardPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double centerX = size.width / 2;
    final double centerY = size.height / 2;

    // Paint for the semi-transparent circle and crosshair lines
    final Paint linePaint = Paint()
      ..color = Colors.white.withOpacity(0.15)
      ..style = PaintingStyle.fill;

    // Paint for the main plus sign
    final Paint plusPaint = Paint()
      ..color = Colors.white.withOpacity(0.7)
      ..style = PaintingStyle.fill;

    // Define the dimensions of the elements
    final double circleRadius = size.width * 0.4;
    final double plusWidth = size.width * 0.4;
    final double plusThickness = size.width * 0.08;
    final double crosshairThickness = size.width * 0.04;

    // 1. Draw the large semi-transparent circle
    canvas.drawCircle(Offset(centerX, centerY), circleRadius, linePaint);

    // 2. Draw the thin, semi-transparent crosshair lines
    // Vertical line
    canvas.drawRRect(
      RRect.fromLTRBAndCorners(
        centerX - crosshairThickness / 2,
        0,
        centerX + crosshairThickness / 2,
        size.height,
        topLeft: Radius.circular(crosshairThickness / 2),
        topRight: Radius.circular(crosshairThickness / 2),
        bottomLeft: Radius.circular(crosshairThickness / 2),
        bottomRight: Radius.circular(crosshairThickness / 2),
      ),
      linePaint,
    );

    // Horizontal line
    canvas.drawRRect(
      RRect.fromLTRBAndCorners(
        0,
        centerY - crosshairThickness / 2,
        size.width,
        centerY + crosshairThickness / 2,
        topLeft: Radius.circular(crosshairThickness / 2),
        topRight: Radius.circular(crosshairThickness / 2),
        bottomLeft: Radius.circular(crosshairThickness / 2),
        bottomRight: Radius.circular(crosshairThickness / 2),
      ),
      linePaint,
    );

    // 3. Draw the more opaque plus sign
    // Vertical bar
    canvas.drawRRect(
      RRect.fromLTRBAndCorners(
        centerX - plusThickness / 2,
        centerY - plusWidth / 2,
        centerX + plusThickness / 2,
        centerY + plusWidth / 2,
        topLeft: Radius.circular(plusThickness / 2),
        topRight: Radius.circular(plusThickness / 2),
        bottomLeft: Radius.circular(plusThickness / 2),
        bottomRight: Radius.circular(plusThickness / 2),
      ),
      plusPaint,
    );

    // Horizontal bar
    canvas.drawRRect(
      RRect.fromLTRBAndCorners(
        centerX - plusWidth / 2,
        centerY - plusThickness / 2,
        centerX + plusWidth / 2,
        centerY + plusThickness / 2,
        topLeft: Radius.circular(plusThickness / 2),
        topRight: Radius.circular(plusThickness / 2),
        bottomLeft: Radius.circular(plusThickness / 2),
        bottomRight: Radius.circular(plusThickness / 2),
      ),
      plusPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
