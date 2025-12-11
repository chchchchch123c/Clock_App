import 'package:clock_app/theme/design_system.dart';
import 'package:flutter/material.dart';

class BaseScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;

  const BaseScaffold({
    super.key,
    required this.body,
    this.appBar,
  });

  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: appBar,
      backgroundColor: DesignSystem.color.kBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: SizedBox(
          width: mediaWidth,
          child: body,
        ),
      ),
    );
  }
}
