import 'package:flutter/material.dart';

import '../../../core/app_strings.dart';
import '../../../core/styles.dart';
import 'default_container_design.dart';

Widget invoiceTotalItem() {
  return defaultContainerDesign(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Row(
        children: [
          Text(AppStrings.total, style: Styles.textStyle16Bold),
          const Spacer(),
          Text(
            '1035 ريال',
            style: Styles.textStyle16Bold,
          ),
        ],
      ),
    ),
  );
}
