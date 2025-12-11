import 'package:clock_app/theme/design_system.dart';
import 'package:flutter/material.dart';

class TimeWheelPicker extends StatelessWidget {
  final ValueNotifier<int> selectedIndexNotifier;
  final FixedExtentScrollController controller;
  final int itemCount;
  final ValueNotifier<bool> isDraggingNotifier;

  const TimeWheelPicker({
    super.key,
    required this.selectedIndexNotifier,
    required this.isDraggingNotifier,
    required this.controller,
    this.itemCount = 100,
  });

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification is ScrollStartNotification) {
          isDraggingNotifier.value = true;
        } else if (notification is ScrollEndNotification) {
          isDraggingNotifier.value = false;
        }
        return false;
      },
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxHeight: 69 * 3,
          maxWidth: 72,
        ),
        child: ValueListenableBuilder<int>(
          valueListenable: selectedIndexNotifier,
          builder: (context, selectedIndex, _) {
            return ValueListenableBuilder<bool>(
              valueListenable: isDraggingNotifier,
              builder: (context, isDragging, _) {
                return ListWheelScrollView.useDelegate(
                  physics: const FixedExtentScrollPhysics(),
                  controller: controller,
                  itemExtent: 72,
                  onSelectedItemChanged: (index) {
                    selectedIndexNotifier.value = index;
                  },
                  childDelegate: ListWheelChildLoopingListDelegate(
                    children: List.generate(itemCount, (index) {
                      final isSelected = index == selectedIndex;
                      return AnimatedDefaultTextStyle(
                        duration: Duration(milliseconds: 200),
                        style: TextStyle(
                          fontFamily: DesignSystem.fontFamily.inter,
                          fontSize: DesignSystem.fontSize.large,
                          color: isSelected ?
                          (isDragging ? DesignSystem.color.kDeepPurple : DesignSystem.color.kBlack) :
                          (isDragging ? DesignSystem.color.kDeepPurple.withAlpha(100) : DesignSystem.color.kGray),
                          fontWeight:
                          isSelected ? FontWeight.bold : FontWeight.normal,
                        ),
                        child: Center(
                          child: Text(
                            index.toString().padLeft(2, '0'),

                          ),
                        ),
                      );
                    }),
                  ),
                );
              }
            );
          },
        ),
      ),
    );
  }
}
