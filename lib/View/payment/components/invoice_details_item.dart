import 'package:flutter/material.dart';
import 'package:nosoh_app/View/payment/components/default_container_design.dart';

import '../../../core/app_strings.dart';
import '../../../core/colors.dart';
import '../../../core/styles.dart';

Widget invoiceDetailsItem() {
  return defaultContainerDesign(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                AppStrings.startDate,
                style: Styles.textStyle15Medium.copyWith(
                  color: notificationsTimeColor,
                ),
              ),
              const Spacer(),
              Text(
                '19 أغسطس 2021',
                style: Styles.textStyle15Medium,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Text(
                AppStrings.endDate,
                style: Styles.textStyle15Medium.copyWith(
                  color: notificationsTimeColor,
                ),
              ),
              const Spacer(),
              Text(
                '18 أكتوبر 2022',
                style: Styles.textStyle15Medium,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Text(
                AppStrings.theTotal,
                style: Styles.textStyle15Medium.copyWith(
                  color: notificationsTimeColor,
                ),
              ),
              const Spacer(),
              Text(
                '1200 ريال',
                style: Styles.textStyle15Medium,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Text(
                AppStrings.discount,
                style: Styles.textStyle15Medium.copyWith(
                  color: notificationsTimeColor,
                ),
              ),
              const Spacer(),
              Text(
                '- 300 ريال',
                style: Styles.textStyle15Medium,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Text(
                AppStrings.taxes,
                style: Styles.textStyle15Medium.copyWith(
                  color: notificationsTimeColor,
                ),
              ),
              const Spacer(),
              Text(
                '135 ريال',
                style: Styles.textStyle15Medium,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
