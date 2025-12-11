import 'package:clock_app/controllers/4_timer_controller.dart';
import 'package:clock_app/screens/components/4_timer/labels/time_separator.dart';
import 'package:clock_app/screens/components/4_timer/wheels/time_wheel_picker.dart';
import 'package:flutter/material.dart';

class TimeWheelPickerRow extends StatelessWidget {
  final TimerController controller;

  const TimeWheelPickerRow({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(flex: 3),
        TimeWheelPicker(
          selectedIndexNotifier: controller.hours.selectedIndex,
          isDraggingNotifier: controller.hours.isDragging,
          controller: controller.hours.controller,
          itemCount: 100,
        ),
        Spacer(),
        TimeSeparator(),
        Spacer(),
        TimeWheelPicker(
          selectedIndexNotifier: controller.minutes.selectedIndex,
          isDraggingNotifier: controller.minutes.isDragging,
          controller: controller.minutes.controller,
          itemCount: 60,
        ),
        Spacer(),
        TimeSeparator(),
        Spacer(),
        TimeWheelPicker(
          selectedIndexNotifier: controller.seconds.selectedIndex,
          isDraggingNotifier: controller.seconds.isDragging,
          controller: controller.seconds.controller,
          itemCount: 60,
        ),
        Spacer(flex: 3),
      ],
    );
  }
}
