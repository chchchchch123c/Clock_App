import 'package:clock_app/controllers/4_timer_controller.dart';
import 'package:clock_app/theme/design_system.dart';
import 'package:clock_app/utils/format_util.dart';
import 'package:flutter/material.dart';

class EndTimeLabel extends StatelessWidget {
  final TimerController controller;

  const EndTimeLabel({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Icon(
            Icons.notifications_rounded,
            color: DesignSystem.color.kBlack,
            size: 20,
          ),
        ),
        SizedBox(width: 4),
        Flexible(
          child: Text(
            FormatUtil.formatEndTime(controller.endTime),
            style: TextStyle(
              color: DesignSystem.color.kBlack,
              fontSize: DesignSystem.fontSize.bodyMedium,
            ),
          ),
        ),
      ],
    );
  }
}
