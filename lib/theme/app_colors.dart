import 'package:flutter/material.dart';

class AppColor {
  const AppColor();

  final kBackgroundColor = const Color(0xFFF7F6FB);
  final kBlack = const Color(0xFF121212);
  final kGray = const Color(0xFF9A999E);
  final kWhite = const Color(0xFFFCFBFF);

  final kOrange = const Color(0xFFE3465B);
  final kPurple = const Color(0xFFC017E4);
  final kDeepPurple = const Color(0xFF8150FE);

  final LinearGradient kPointGradient = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFE3465B),
      Color(0xFFC017E4),
      Color(0xFF8150FE),
    ],
    stops: [0.0, 0.5, 1.0],
  );
}
