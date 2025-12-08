import 'package:clock_app/constant/color.dart';
import 'package:flutter/material.dart';

class TimerStartButton extends StatelessWidget {
  const TimerStartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: kPointGradient,
          borderRadius: BorderRadius.all(Radius.circular(56))
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        onPressed: () {
          // TODO
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 28,
            vertical: 12,
          ),
          child: Text(
            '시작',
            style: TextStyle(
              color: kWhite,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
