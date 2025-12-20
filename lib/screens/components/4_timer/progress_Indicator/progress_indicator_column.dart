import 'package:clock_app/controllers/4_timer_controller.dart';
import 'package:clock_app/screens/components/4_timer/labels/progress_indicator/end_time_label.dart';
import 'package:clock_app/screens/components/4_timer/labels/progress_indicator/remaining_time_label.dart';
import 'package:clock_app/screens/components/4_timer/labels/progress_indicator/total_time_label.dart';
import 'package:clock_app/screens/components/4_timer/progress_Indicator/timer_progress_indicator.dart';
import 'package:clock_app/utils/size_util.dart';
import 'package:flutter/material.dart';

class ProgressIndicatorColumn extends StatelessWidget {
  final TimerController controller;
  final bool isClick;

  const ProgressIndicatorColumn({
    super.key,
    required this.controller,
    required this.isClick,
  });

  @override
  Widget build(BuildContext context) {
    final width = SizeUtil.width(context);
    return AnimatedOpacity(
      opacity: isClick ? 1 : 0,
      duration: const Duration(milliseconds: 600),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: isClick ? width * 0.85 : 0,
        height: isClick ? width * 0.85 : 0,
        child: AnimatedBuilder(
          animation: controller.progressController,
          builder: (_, _) {
            return CustomPaint(
              painter: TimerProgressIndicator(
                progress: 1.0 - controller.progressController.value,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment(0, -0.5),
                    child: TotalTimeLabel(controller: controller),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: RemainingTimeLabel(controller: controller),
                  ),
                  Align(
                    alignment: Alignment(0, 0.5),
                    child: EndTimeLabel(controller: controller),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
