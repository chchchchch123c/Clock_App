import 'package:flutter/material.dart';

const Color kBackgroundColor = Color(0xFFF7F6FB);
const Color kBlack = Color(0xFF121212);
const Color kGray = Color(0xFF9A999E);
const Color kWhite = Color(0xFFFCFBFF);

const LinearGradient kPointGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFFE3465B),
    Color(0xFFC017E4),
    Color(0xFF8150FE),
  ],
  stops: [
    0.0,
    0.5,
    1.0,
  ],
);