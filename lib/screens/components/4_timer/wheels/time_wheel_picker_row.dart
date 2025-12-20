import 'package:clock_app/controllers/4_timer_controller.dart';
import 'package:clock_app/screens/components/4_timer/labels/wheels/time_separator_label.dart';
import 'package:clock_app/screens/components/4_timer/labels/wheels/time_unit_label_row.dart';
import 'package:clock_app/screens/components/4_timer/wheels/time_wheel_picker.dart';
import 'package:clock_app/utils/size_util.dart';
import 'package:flutter/material.dart';

class TimeWheelPickerRow extends StatelessWidget {
  final TimerController controller;
  final bool isClick;

  const TimeWheelPickerRow({super.key, required this.controller, required this.isClick});

  @override
  Widget build(BuildContext context) {
    final width = SizeUtil.width(context);
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 600),
      opacity: isClick ? 0 : 1,
      child: SizedBox(
        width: isClick ? 0 : width,
        height: isClick ? 0 : width * 0.8,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 16,
              child: TimeUnitLabelRow(),
            ),
            Row(
              children: [
                Spacer(flex: 3),
                TimeWheelPicker(
                  selectedIndexNotifier: controller.hours.selectedIndex,
                  isDraggingNotifier: controller.hours.isDragging,
                  itemCount: 100,
                ),
                Spacer(),
                TimeSeparatorLabel(),
                Spacer(),
                TimeWheelPicker(
                  selectedIndexNotifier: controller.minutes.selectedIndex,
                  isDraggingNotifier: controller.minutes.isDragging,
                  itemCount: 60,
                ),
                Spacer(),
                TimeSeparatorLabel(),
                Spacer(),
                TimeWheelPicker(
                  selectedIndexNotifier: controller.seconds.selectedIndex,
                  isDraggingNotifier: controller.seconds.isDragging,
                  itemCount: 60,
                ),
                Spacer(flex: 3),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
