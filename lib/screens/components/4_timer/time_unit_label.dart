import 'package:clock_app/constant/color.dart';
import 'package:flutter/material.dart';

class TimeUnitLabel extends StatelessWidget {
  final String label;
  const TimeUnitLabel({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: kGray,
      ),
    );
  }
}
