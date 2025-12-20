import 'package:clock_app/theme/design_system.dart';
import 'package:flutter/material.dart';

class TimeSeparatorLabel extends StatelessWidget {
  const TimeSeparatorLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        ':',
        style: TextStyle(
          fontSize: DesignSystem.fontSize.displayMedium,
          color: DesignSystem.color.kBlack,
        ),
      ),
    );
  }
}
