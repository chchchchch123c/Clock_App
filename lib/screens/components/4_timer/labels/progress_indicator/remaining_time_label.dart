import 'package:clock_app/controllers/4_timer_controller.dart';
import 'package:clock_app/theme/design_system.dart';
import 'package:clock_app/utils/format_util.dart';
import 'package:flutter/material.dart';

class RemainingTimeLabel extends StatelessWidget {
  final TimerController controller;

  const RemainingTimeLabel({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Text(
      FormatUtil.formattedRemainingTime(controller.remainingSeconds),
      style: TextStyle(
        color: DesignSystem.color.kBlack,
        fontSize: DesignSystem.fontSize.displayLarge,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
