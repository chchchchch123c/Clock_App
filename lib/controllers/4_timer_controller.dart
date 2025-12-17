import 'package:flutter/material.dart';

class TimerController extends ChangeNotifier {
  final TimerWheelState hours = TimerWheelState();
  final TimerWheelState minutes = TimerWheelState();
  final TimerWheelState seconds = TimerWheelState();

  final ValueNotifier<bool> isHideWheel = ValueNotifier(false);

  void startTimer() async {
    isHideWheel.value = !isHideWheel.value;
    notifyListeners();
  }
}

class TimerWheelState {
  final ValueNotifier<int> selectedIndex = ValueNotifier<int>(0);
  final ValueNotifier<bool> isDragging = ValueNotifier(false);
  final FixedExtentScrollController controller = FixedExtentScrollController();
}