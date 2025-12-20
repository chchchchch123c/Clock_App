import 'dart:async';
import 'package:flutter/material.dart';

class TimerController extends ChangeNotifier {
  final TimerWheelState hours = TimerWheelState();
  final TimerWheelState minutes = TimerWheelState();
  final TimerWheelState seconds = TimerWheelState();

  final ValueNotifier<bool> isHideWheel = ValueNotifier(false);

  late AnimationController progressController;

  void initAnimation(TickerProvider vsync) {
    progressController = AnimationController(
      vsync: vsync,
    )..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        isHideWheel.value = false;
      }
    });
  }

  void disposeAnimation() {
    progressController.dispose();
  }

  Timer? _timer;

  int totalSeconds = 0;
  int remainingSeconds = 0;

  DateTime? endTime;

  int _calculateTotalSeconds() {
    return (hours.selectedIndex.value * 3600) +
        (minutes.selectedIndex.value * 60) +
        seconds.selectedIndex.value;
  }

  void startTimer() {
    totalSeconds = _calculateTotalSeconds();
    if (totalSeconds <= 0) return;

    remainingSeconds = totalSeconds;

    endTime = DateTime.now().add(
      Duration(seconds: totalSeconds),
    );

    progressController.duration = Duration(seconds: totalSeconds);

    progressController.forward(from: 0);
    isHideWheel.value = true;

    _startTicking();
  }

  void _startTicking() {
    _timer?.cancel();
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) {
        remainingSeconds--;
        if (remainingSeconds == 0) {
          _finishTimer();
        } else {
          notifyListeners();
        }
      },
    );
  }

  void _finishTimer() {
    _timer?.cancel();
    _timer = null;

    notifyListeners();
  }

  void pauseTimer() {
    _timer?.cancel();
    _timer = null;
  }

  void resumeTimer() {
    if (remainingSeconds <= 0) return;
    _startTicking();
  }

  void resetTimer() {
    _timer?.cancel();
    _timer = null;

    totalSeconds = 0;
    remainingSeconds = 0;
    endTime = null;

    isHideWheel.value = false;
    notifyListeners();
  }
}

class TimerWheelState {
  final ValueNotifier<int> selectedIndex = ValueNotifier<int>(0);
  final ValueNotifier<bool> isDragging = ValueNotifier(false);
}