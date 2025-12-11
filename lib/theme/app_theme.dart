import 'package:clock_app/theme/design_system.dart';
import 'package:flutter/material.dart';

class AppTheme {
  final themeData = ThemeData(
      fontFamily: DesignSystem.fontFamily.inter,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: DesignSystem.color.kBlack,
          )
      ),
      iconTheme: IconThemeData(
        color: DesignSystem.color.kBlack,
      )
  );
}