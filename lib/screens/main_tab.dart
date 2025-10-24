import 'package:clock_app/constant/color.dart';
import 'package:clock_app/screens/1_alarm.dart';
import 'package:clock_app/screens/2_world_clock.dart';
import 'package:clock_app/screens/3_stopwatch.dart';
import 'package:clock_app/screens/4_timer.dart';
import 'package:flutter/material.dart';

class MainTab extends StatelessWidget {
  const MainTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            children: [
              Alarm(),
              WorldClock(),
              Stopwatch(),
              Timer(),
            ],
          ),
          bottomNavigationBar: Container(
            color: kBackgroundColor,
            height: 56,
            child: TabBar(
              labelPadding: EdgeInsets.symmetric(
                vertical: 18,
              ),
              indicatorColor: kBlack,
              labelColor: kBlack,
              unselectedLabelColor: kGray,
              tabs: [
                Text('알람'),
                Text('세계시각'),
                Text('스톱워치'),
                Text('타이머'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
