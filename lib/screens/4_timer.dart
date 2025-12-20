import 'package:clock_app/controllers/4_timer_controller.dart';
import 'package:clock_app/screens/components/4_timer/progress_Indicator/progress_indicator_column.dart';
import 'package:clock_app/screens/components/4_timer/wheels/time_wheel_picker_row.dart';
import 'package:clock_app/screens/widgets/base_app_bar.dart';
import 'package:clock_app/screens/widgets/base_scaffold.dart';
import 'package:flutter/material.dart';

import 'components/4_timer/button/timer_start_button.dart';

class Timer extends StatefulWidget {
  final TimerController controller;

  const Timer({super.key, required this.controller});

  @override
  State<Timer> createState() => _TimerState();
}

class _TimerState extends State<Timer> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    widget.controller.initAnimation(this);
  }

  @override
  void dispose() {
    widget.controller.disposeAnimation();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBar: BaseAppBar(
        onTap: () {},
      ),
      body: ValueListenableBuilder<bool>(
        valueListenable: widget.controller.isHideWheel,
        builder: (context, isClick, _) {
          return Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 24,
                child: ProgressIndicatorColumn(
                  controller: widget.controller,
                  isClick: isClick,
                ),
              ),
              Positioned(
                top: 24,
                child: TimeWheelPickerRow(
                  controller: widget.controller,
                  isClick: isClick,
                ),
              ),
              Positioned(
                bottom: 64,
                child: TimerStartButton(
                  controller: widget.controller,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
