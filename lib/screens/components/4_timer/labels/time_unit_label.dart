import 'package:clock_app/theme/design_system.dart';
import 'package:flutter/material.dart';

class TimeUnitLabel extends StatelessWidget {
  final String label;
  const TimeUnitLabel({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 32,
      height: 22,
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            fontSize: DesignSystem.fontSize.bodyMedium,
            fontWeight: FontWeight.w500,
            color: DesignSystem.color.kGray,
          ),
        ),
      ),
    );
  }
}
