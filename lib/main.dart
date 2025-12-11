import 'package:clock_app/screens/main_tab.dart';
import 'package:clock_app/theme/design_system.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    theme: DesignSystem.theme.themeData,
    home: MainTab(),
  ));
}
