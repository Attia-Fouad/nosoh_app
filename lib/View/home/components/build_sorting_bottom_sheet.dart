import 'package:flutter/material.dart';
import 'package:nosoh_app/core/styles.dart';

import '../../../core/app_strings.dart';
import '../../../core/assets_data.dart';
import '../../../core/colors.dart';
import '../../../shared_components.dart';

class BuildSortingBottomSheet extends StatelessWidget {
  const BuildSortingBottomSheet({super.key});

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
        padding: const EdgeInsets.all(32.0),
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Positioned(
              top: -20,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Image.asset(
                  AssetsData.dragImage,
                  color: dragImageColor,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      AppStrings.sorting,
                      style: Styles.textStyle24Medium.copyWith(color: myColor),
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                buildElements(),
                const SizedBox(
                  height: 40,
                ),
                buildDefaultButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSelectedItem({
    required String text,
    required bool isSelected,
    required Function()? onTap,
  }) =>
      Expanded(
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  text,
                  style: Styles.textStyle14Medium.copyWith(
                    color: containerTextColor,
                  ),
                ),
                const Spacer(),
                if (isSelected)
                  Icon(
                    Icons.check,
                    color: pinBorderCompleteColor,
                  ),
              ],
            ),
          ),
        ),
      );

  Widget buildDefaultButton() => defaultButton(
      color: myColor,
      onPressed: () {},
      text: AppStrings.apply,
      textStyle: Styles.textStyle24Medium);

  Widget myDivider() => Container(
        width: double.infinity,
        height: 0.5,
        color: Colors.grey[300],
      );

  Widget buildElements() => Expanded(
        child: Container(
          decoration: BoxDecoration(
              color: sortingContainerColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 2,
                  offset: const Offset(0, 1),
                ),
              ],
              border: Border.all(color: notificationBorderColor, width: 0.2),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildSelectedItem(
                  text: AppStrings.profitUpToDown,
                  isSelected: true,
                  onTap: () {}),
              myDivider(),
              buildSelectedItem(
                  text: AppStrings.profitDownToUp,
                  isSelected: false,
                  onTap: () {}),
              myDivider(),
              buildSelectedItem(
                onTap: () {},
                text: AppStrings.newsOpinions,
                isSelected: false,
              ),
              myDivider(),
              buildSelectedItem(
                onTap: () {},
                text: AppStrings.oldestOpinions,
                isSelected: false,
              ),
            ],
          ),
        ),
      );
}
