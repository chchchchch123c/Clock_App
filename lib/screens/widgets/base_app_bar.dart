import 'package:clock_app/theme/design_system.dart';
import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget{
  final VoidCallback onTap;
  const BaseAppBar({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      toolbarHeight: 88,
      backgroundColor: DesignSystem.color.kBackgroundColor,
      actionsPadding: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      actions: [
        GestureDetector(
          onTap: onTap,
          child: Icon(Icons.more_vert),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(88);
}