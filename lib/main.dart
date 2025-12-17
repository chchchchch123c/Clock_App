import 'package:clock_app/screens/main_tab.dart';
import 'package:clock_app/theme/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: DesignSystem.fontFamily.inter,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: DesignSystem.color.kBlack,
          ),
        ),
        iconTheme: IconThemeData(
          color: DesignSystem.color.kBlack,
        ),
      ),
      home: MainTab(),
    ),
  );
}
