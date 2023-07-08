import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../core/styles.dart';

class BuildBottomSheetItem extends StatelessWidget {
  const BuildBottomSheetItem(
      {super.key, required this.text, required this.isSelected});
  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      decoration: BoxDecoration(
          color: isSelected ? myColor : Colors.white,
          border: Border.all(color: myColor, width: 1),
          borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: Text(
          text,
          style: Styles.textStyle14Medium.copyWith(
            color: isSelected ? Colors.white : myColor,
          ),
        ),
      ),
    );
  }
}
