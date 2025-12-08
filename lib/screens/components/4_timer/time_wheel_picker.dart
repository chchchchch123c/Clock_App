import 'package:clock_app/constant/color.dart';
import 'package:flutter/material.dart';

class TimeWheelPicker extends StatelessWidget {
  final ValueNotifier<int> selectedIndexNotifier;
  final FixedExtentScrollController controller;
  final int itemCount;

  const TimeWheelPicker({
    super.key,
    required this.selectedIndexNotifier,
    required this.controller,
    this.itemCount = 100,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 69 * 3,
        maxWidth: 72,
      ),
      child: ValueListenableBuilder<int>(
        valueListenable: selectedIndexNotifier,
        builder: (context, selectedIndex, _) => ListWheelScrollView.useDelegate(
            physics: const FixedExtentScrollPhysics(),
            controller: controller,
            itemExtent: 72,
            onSelectedItemChanged: (index) {
              selectedIndexNotifier.value = index;
            },
            childDelegate: ListWheelChildLoopingListDelegate(
              children: List.generate(itemCount, (index) {
                final isSelected = index == selectedIndex;
                return Center(
                  child: Text(
                    '$index',
                    style: TextStyle(
                      fontSize: 48,
                      color: isSelected ? kBlack : kGray,
                      fontWeight:
                      isSelected ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                );
              }),
            ),
          ),
      ),
    );
  }
}
