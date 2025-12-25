import 'package:clock_app/controllers/4_timer_controller.dart';
import 'package:clock_app/screens/widgets/base_button.dart';
import 'package:flutter/material.dart';

class TimerStartButton extends StatelessWidget {
  final TimerController controller;
  const TimerStartButton({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BaseButton(
      onPressed: () {
        controller.startTimer();
      },
      text: '시작',
    );
  }
}
