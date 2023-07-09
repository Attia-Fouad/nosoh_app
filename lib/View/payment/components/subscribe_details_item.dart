import 'package:flutter/material.dart';

import '../../../core/app_strings.dart';
import '../../../core/colors.dart';
import '../../../core/styles.dart';
import 'default_container_design.dart';

Widget subscribeDetailsItem() {
  return defaultContainerDesign(
      child: Padding(
    padding: const EdgeInsets.all(19),
    child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.folder_copy,
              color: customOrangeColor,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              AppStrings.analystsOpinionService,
              style: Styles.textStyle15Bold,
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.calendar_month,
              color: customOrangeColor,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              AppStrings.subscriptionPeriod,
              style: Styles.textStyle15Bold,
            ),
            const SizedBox(
              width: 6,
            ),
            Text(
              AppStrings.sixMonth,
              style: Styles.textStyle15Bold.copyWith(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ],
    ),
  ));
}
