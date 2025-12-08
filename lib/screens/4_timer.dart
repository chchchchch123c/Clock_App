import 'package:clock_app/controllers/4_timer_controller.dart';
import 'package:clock_app/screens/components/4_timer/time_wheel_picker.dart';
import 'package:clock_app/screens/components/4_timer/time_unit_label_row.dart';
import 'package:clock_app/screens/components/4_timer/timer_start_button.dart';
import 'package:clock_app/screens/widgets/base_app_bar.dart';
import 'package:clock_app/screens/widgets/base_scaffold.dart';
import 'package:clock_app/utils/screen_size.dart';
import 'package:flutter/material.dart';

class Timer extends StatelessWidget {
  final TimerController controller;
  const Timer({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final width = ScreenSize.width(context);
    return BaseScaffold(
      appBar: BaseAppBar(
        onTap: () {},
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 24,
            child: SizedBox(
              width: width,
              height: width,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 16,
                    child: TimeUnitLabelRow(),
                  ),
                  TimeWheelPicker(
                    selectedIndexNotifier: controller.selectedIndex,
                    controller: controller.wheelController,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 64,
            child: TimerStartButton(),
          ),
        ],
      ),
    );
  }
}
