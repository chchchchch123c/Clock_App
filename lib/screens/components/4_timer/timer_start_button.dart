import 'package:clock_app/constant/color.dart';
import 'package:flutter/material.dart';

class TimerStartButton extends StatelessWidget {
  const TimerStartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: kPointGradient,
          borderRadius: BorderRadius.all(Radius.circular(64))
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          fixedSize: Size(136, 56),
        ),
        onPressed: () {
          // TODO
        },
        child: Text(
          '시작',
          style: TextStyle(
            color: kWhite,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
