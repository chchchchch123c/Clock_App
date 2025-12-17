import 'dart:math';
import 'package:flutter/material.dart';
import 'package:clock_app/theme/design_system.dart';

class TimerProgressIndicator extends CustomPainter {
  final double progress;
  final double strokeWidth;

  TimerProgressIndicator({
    required this.progress,
    this.strokeWidth = 12,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final radius = (size.width / 2) - strokeWidth / 2;

    final backgroundPaint = Paint()
      ..color = DesignSystem.color.kDial
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(center, radius, backgroundPaint);

    final rect = Rect.fromCircle(center: center, radius: radius);

    final progressPaint = Paint()
      ..shader = DesignSystem.color.kPointGradient.createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    final startAngle = -pi / 2;
    final sweepAngle = 2 * pi * progress;

    canvas.drawArc(
      rect,
      startAngle,
      sweepAngle,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant TimerProgressIndicator oldDelegate) {
    return oldDelegate.progress != progress;
  }
}
