import 'package:clock_app/constant/color.dart';
import 'package:clock_app/screens/main_tab.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: kBlack,
        )
      ),
      iconTheme: IconThemeData(
        color: kBlack,
      )
    ),
    home: MainTab(),
  ));
}
