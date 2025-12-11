import 'package:flutter/material.dart';

class TimerController {
  final TimerWheelState hours = TimerWheelState();
  final TimerWheelState minutes = TimerWheelState();
  final TimerWheelState seconds = TimerWheelState();
}

class TimerWheelState {
  final ValueNotifier<int> selectedIndex = ValueNotifier<int>(0);
  final ValueNotifier<bool> isDragging = ValueNotifier(false);
  final FixedExtentScrollController controller = FixedExtentScrollController();
}