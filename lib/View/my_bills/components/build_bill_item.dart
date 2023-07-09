import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../core/app_strings.dart';
import '../../../core/colors.dart';
import '../../../core/styles.dart';
import '../../../shared_components.dart';
import '../../payment/components/default_container_design.dart';
import '../../payment/components/payment_method_item.dart';

class BuildBillItem extends StatelessWidget {
  const BuildBillItem({super.key});

  @override
  Widget build(BuildContext context) {
    return defaultContainerDesign(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.picture_as_pdf,
                      size: 30,
                      color: HexColor('#B4B4C3'),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      AppStrings.analystsOpinionService,
                      style: Styles.textStyle13Bold,
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      AppStrings.startDate,
                      style: Styles.textStyle10Medium.copyWith(
                        color: containerTextColor,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      '29 أكتوبر 2021',
                      style: Styles.textStyle11Bold.copyWith(
                        color: myColor,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      AppStrings.endDate,
                      style: Styles.textStyle10Medium.copyWith(
                        color: containerTextColor,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      '29 أكتوبر 2021',
                      style: Styles.textStyle11Bold.copyWith(
                        color: myColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            myDivider(),
            const SizedBox(
              height: 8,
            ),
            defaultButton(
                height: 40,
                text: AppStrings.downloadMyBill,
                textStyle: Styles.textStyle10Medium,
                color: myColor,
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}
