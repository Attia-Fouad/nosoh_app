import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';

import '../../../core/app_strings.dart';
import '../../../core/colors.dart';
import '../../../core/styles.dart';

class BuildQuistionItem extends StatelessWidget {
  const BuildQuistionItem({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 25,
        ),
        Text(
          text,
          style: Styles.textStyle16Medium.copyWith(
            color: myColor,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(children: [
          CustomCheckBox(
            value: true,
            shouldShowBorder: true,
            borderColor: Colors.black,
            checkedFillColor: myColor,
            borderRadius: 50,
            borderWidth: 1,
            checkBoxSize: 20,
            onChanged: (val) {},
          ),
          Text(
            AppStrings.yes,
            style: Styles.textStyle14Medium.copyWith(
              color: Colors.black,
            ),
          ),
        ]),
        Row(children: [
          CustomCheckBox(
            value: false,
            shouldShowBorder: true,
            borderColor: Colors.black,
            checkedFillColor: myColor,
            borderRadius: 50,
            borderWidth: 1,
            checkBoxSize: 20,
            onChanged: (val) {},
          ),
          Text(
            AppStrings.no,
            style: Styles.textStyle14Medium.copyWith(
              color: Colors.black,
            ),
          ),
        ]),
      ],
    );
  }
}
