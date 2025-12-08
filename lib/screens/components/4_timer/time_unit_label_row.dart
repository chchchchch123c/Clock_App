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
        children: [
          Spacer(flex: 3,),
          TimeUnitLabel(label: '시간'),
          Spacer(flex: 4,),
          TimeUnitLabel(label: '분'),
          Spacer(flex: 4,),
          TimeUnitLabel(label: '초'),
          Spacer(flex: 3,),
        ],
      ),
    );
  }
}
