import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../core/styles.dart';

class BuildRecommendationScreenItem extends StatelessWidget {
  const BuildRecommendationScreenItem(
      {super.key, this.icon, required this.text, this.height});
  final Widget? icon;
  final String text;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      height: height ?? 60,
      decoration: BoxDecoration(
          color: formFieldColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 1,
            color: formFieldBorderColor,
          )),
      child: Row(
        children: [
          Expanded(
            child: Text(
              text,
              style: Styles.textStyle18Medium.copyWith(),
            ),
          ),
          if (icon != null) icon!,
        ],
      ),
    );
  }
}
