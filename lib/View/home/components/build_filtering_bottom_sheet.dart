import 'package:flutter/material.dart';

import '../../../core/app_strings.dart';
import '../../../core/assets_data.dart';
import '../../../core/colors.dart';
import '../../../core/styles.dart';
import '../../../shared_components.dart';
import 'build_bottom_sheet_item.dart';

class BuildFilteringBottomSheet extends StatelessWidget {
  const BuildFilteringBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Image.asset(
                AssetsData.dragImage,
                color: dragImageColor,
              ),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        AppStrings.filtering,
                        style:
                            Styles.textStyle24Medium.copyWith(color: myColor),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    AppStrings.analystOpinions,
                    style: Styles.textStyle16Medium.copyWith(
                      color: containerTextColor,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  buildRow1(),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    AppStrings.analysisType,
                    style: Styles.textStyle16Medium.copyWith(
                      color: containerTextColor,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  buildRow2(),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    AppStrings.analysts,
                    style: Styles.textStyle16Medium.copyWith(
                      color: containerTextColor,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  buildRow3(),
                  const SizedBox(
                    height: 50,
                  ),
                  buildDefaultButton(),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRow1() => Row(
        children: const [
          Expanded(
            child: BuildBottomSheetItem(
              text: AppStrings.all,
              isSelected: false,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: BuildBottomSheetItem(
              text: AppStrings.speculation,
              isSelected: false,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: BuildBottomSheetItem(
              text: AppStrings.investment,
              isSelected: true,
            ),
          ),
        ],
      );

  Widget buildRow2() => Row(
        children: const [
          Expanded(
            child: BuildBottomSheetItem(
              text: AppStrings.all,
              isSelected: false,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: BuildBottomSheetItem(
              text: AppStrings.buy,
              isSelected: false,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: BuildBottomSheetItem(
              text: AppStrings.sale,
              isSelected: true,
            ),
          ),
        ],
      );

  Widget buildRow3() => Row(
        children: const [
          Expanded(
            child: BuildBottomSheetItem(
              text: AppStrings.all,
              isSelected: false,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: BuildBottomSheetItem(
              text: AppStrings.favorite,
              isSelected: false,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: BuildBottomSheetItem(
              text: AppStrings.myOpinions,
              isSelected: true,
            ),
          ),
        ],
      );

  Widget buildDefaultButton() => defaultButton(
      color: myColor,
      onPressed: () {},
      text: AppStrings.apply,
      textStyle: Styles.textStyle24Medium);
}
