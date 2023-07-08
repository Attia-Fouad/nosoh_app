import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../core/app_strings.dart';
import '../../../core/colors.dart';
import '../../../core/styles.dart';

class BuildHomeItem extends StatelessWidget {
  const BuildHomeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Material(
            elevation: 8,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: notificationBorderColor,
                    width: 0.2,
                  )),
              child: bigContainerChild(),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        lastPartOfHomeItem(),
      ],
    );
  }
}

Widget lastPartOfHomeItem() => Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: smallContainerColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.policy,
              maxLines: null,
              style: Styles.textStyle12Medium,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                AppStrings.seeIt,
                style: Styles.textStyle12Medium
                    .copyWith(decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
      ),
    );
Widget bigContainerChild() {
  return Column(
    children: [
      firstPartOfContainer(),
      secondPartOfContainer(),
      thirdPartOfContainer(),
    ],
  );
}

Widget firstPartOfContainer() {
  return Container(
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 21,
            backgroundColor: HexColor('#A7A7A7'),
          ),
          const SizedBox(
            width: 3,
          ),
          Column(
            children: [
              Row(
                children: [
                  Text(
                    AppStrings.companyName,
                    style: Styles.textStyle15Medium,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '(2222)',
                    style: Styles.textStyle12Medium.copyWith(
                      color: customOrangeColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                AppStrings.homeItemDate,
                style: Styles.textStyle12Medium.copyWith(
                  color: suvaGreyColor,
                ),
              )
            ],
          ),
          const Spacer(),
          Container(
            width: 70,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(29),
                color: HexColor('#C4E3D8'),
                border: Border.all(
                  color: HexColor('#C4E3D8'),
                )),
            child: Center(
              child: Text(
                AppStrings.buy,
                style: Styles.textStyle13Medium.copyWith(
                  color: HexColor('#4EB48E'),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget secondPartOfContainer() {
  return Container(
    color: HexColor('#FAFAFA'),
    child: Text(
      AppStrings.lorem,
      style: Styles.textStyle14Medium.copyWith(
        color: dragImageColor,
      ),
    ),
  );
}

Widget thirdPartOfContainer() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              AppStrings.priceWhenAnalysis,
              style: Styles.textStyle12Medium.copyWith(
                color: containerTextColor,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
          ],
        ),
      ],
    ),
  );
}
