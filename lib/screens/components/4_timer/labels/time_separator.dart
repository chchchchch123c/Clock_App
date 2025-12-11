import 'package:clock_app/theme/design_system.dart';
import 'package:flutter/material.dart';

class TimeSeparator extends StatelessWidget {
  const TimeSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        ':',
        style: TextStyle(
          fontSize: DesignSystem.fontSize.large,
          color: DesignSystem.color.kBlack,
        ),
      ),
    );
  }
}
