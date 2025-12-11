import 'package:clock_app/controllers/4_timer_controller.dart';
import 'package:clock_app/screens/components/4_timer/buttons/timer_start_button.dart';
import 'package:clock_app/screens/components/4_timer/labels/time_unit_label_row.dart';
import 'package:clock_app/screens/components/4_timer/wheels/time_wheel_picker_row.dart';
import 'package:clock_app/screens/widgets/base_app_bar.dart';
import 'package:clock_app/screens/widgets/base_scaffold.dart';
import 'package:clock_app/utils/size_util.dart';
import 'package:flutter/material.dart';

class Timer extends StatelessWidget {
  final TimerController controller;

  const Timer({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final width = SizeUtil.width(context);
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
              height: width * 0.8,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 16,
                    child: TimeUnitLabelRow(),
                  ),
                  TimeWheelPickerRow(
                    controller: controller,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 64,
            child: TimerStartButton(
              controller: controller,
            ),
          ),
        ],
      ),
    );
  }
}
