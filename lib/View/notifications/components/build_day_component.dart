import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../core/styles.dart';

class BuildDayComponent extends StatelessWidget {
  const BuildDayComponent({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        color: containerColor,
      ),
      child: Center(
        child: Text(
          text,
          style: Styles.textStyle16Medium.copyWith(
            color: containerTextColor,
          ),
        ),
      ),
    );
  }
}
