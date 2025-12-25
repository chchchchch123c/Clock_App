import 'package:clock_app/theme/design_system.dart';
import 'package:flutter/material.dart';

enum BaseButtonType {
  primary,
  light,
  danger,
}

extension BaseButtonStyle on BaseButtonType {
  bool get isGradient => this == BaseButtonType.primary;

  Color get backgroundColor {
    switch (this) {
      case BaseButtonType.light:
        return DesignSystem.color.kWhite;
      case BaseButtonType.danger:
        return DesignSystem.color.kRed;
      case BaseButtonType.primary:
        return Colors.transparent;
    }
  }

  Color get textColor {
    switch (this) {
      case BaseButtonType.light:
        return DesignSystem.color.kBlack;
      case BaseButtonType.danger:
      case BaseButtonType.primary:
        return DesignSystem.color.kWhite;
    }
  }

  LinearGradient? get gradient {
    if (this == BaseButtonType.primary) {
      return DesignSystem.color.kPointGradient;
    }
    return null;
  }
}

class BaseButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final BaseButtonType type;

  const BaseButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.type = BaseButtonType.primary,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: type.gradient,
        color: type.isGradient ? null : type.backgroundColor,
        borderRadius: const BorderRadius.all(Radius.circular(56)),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 28,
            vertical: 12,
          ),
          child: Text(
            text,
            style: TextStyle(
              color: type.textColor,
              fontSize: DesignSystem.fontSize.labelLarge,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
