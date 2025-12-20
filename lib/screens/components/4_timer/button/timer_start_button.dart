import 'package:clock_app/controllers/4_timer_controller.dart';
import 'package:clock_app/theme/design_system.dart';
import 'package:flutter/material.dart';

class TimerStartButton extends StatelessWidget {
  final TimerController controller;
  const TimerStartButton({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: DesignSystem.color.kPointGradient,
          borderRadius: BorderRadius.all(Radius.circular(56))
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        onPressed: () {
          controller.startTimer();
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 28,
            vertical: 12,
          ),
          child: Text(
            '시작', //  TODO => '중지'로 바뀌어야 함
            style: TextStyle(
              color: DesignSystem.color.kWhite,
              fontSize: DesignSystem.fontSize.labelLarge,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
