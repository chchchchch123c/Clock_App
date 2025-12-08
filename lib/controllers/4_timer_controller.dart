import 'package:flutter/material.dart';

class TimerController {

  final ValueNotifier<int> selectedIndex = ValueNotifier<int>(0);
  final FixedExtentScrollController wheelController =
  FixedExtentScrollController();

}
