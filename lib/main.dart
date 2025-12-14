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
      theme: DesignSystem.theme.themeData,
      home: MainTab(),
    ),
  );
}
