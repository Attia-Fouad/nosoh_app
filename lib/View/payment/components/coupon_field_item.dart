import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../../core/app_strings.dart';
import '../../../core/colors.dart';
import '../../../core/styles.dart';

Widget couponFieldItem() {
  return DottedBorder(
    color: customBlue,
    radius: const Radius.circular(10),
    borderType: BorderType.RRect,
    dashPattern: const [8, 8],
    strokeWidth: 1,
    child: Container(
      height: 50,
      decoration: BoxDecoration(
        color: sortingContainerColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21.0),
        child: Row(
          children: [
            Text(
              AppStrings.enterCoupon,
              style: Styles.textStyle14Medium,
            ),
          ],
        ),
      ),
    ),
  );
}
