import 'package:clock_app/screens/components/4_timer/time_unit_label.dart';
import 'package:clock_app/utils/screen_size.dart';
import 'package:flutter/material.dart';

class TimeUnitLabelRow extends StatelessWidget {
  const TimeUnitLabelRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenSize.width(context),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TimeUnitLabel(label: '시간'),
          TimeUnitLabel(label: '분'),
          TimeUnitLabel(label: '초'),
        ],
      ),
    );
  }
}
