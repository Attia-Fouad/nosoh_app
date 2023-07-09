import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../core/app_strings.dart';
import '../../../core/colors.dart';
import '../../../core/styles.dart';

class BuildConfirmRecommendationItem extends StatelessWidget {
  const BuildConfirmRecommendationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 1,
                  //spreadRadius: 1,
                ),
              ],
              border: Border.all(
                color: notificationBorderColor,
                width: 0.2,
              )),
          child: bigContainerChild(),
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}

Widget bigContainerChild() {
  return Column(
    children: [
      firstPartOfContainer(),
      secondPartOfContainer(),
      thirdPartOfContainer(),
      fourthPartOfContainer(),
      const SizedBox(
        height: 30,
      ),
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
            Text(
              AppStrings.priceInSaudi,
              style: Styles.textStyle14Bold.copyWith(
                color: HexColor('#2E2E2E'),
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            Text(
              AppStrings.analysisType,
              style: Styles.textStyle12Medium.copyWith(
                color: containerTextColor,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              AppStrings.speculation,
              style: Styles.textStyle14Bold.copyWith(
                color: HexColor('#2E2E2E'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'وقف الخسارة',
              style: Styles.textStyle12Medium.copyWith(
                color: HexColor('#515151'),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              '12.8',
              style: Styles.textStyle14Bold.copyWith(
                color: HexColor('#515151'),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              AppStrings.targetPrice,
              style: Styles.textStyle12Medium.copyWith(
                color: containerTextColor,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              AppStrings.priceInSaudi,
              style: Styles.textStyle14Bold.copyWith(
                color: HexColor('#2E2E2E'),
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            Text(
              'نسبة التغير في السعر',
              style: Styles.textStyle12Medium.copyWith(
                color: containerTextColor,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              '100%',
              style: Styles.textStyle14Bold.copyWith(
                color: HexColor('#4EB48E'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'التغير لسعر اليوم',
              style: Styles.textStyle12Medium.copyWith(
                color: HexColor('#515151'),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              '1%-',
              style: Styles.textStyle14Bold.copyWith(
                color: HexColor('#EA3F3F'),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              AppStrings.todayPrice,
              style: Styles.textStyle12Medium.copyWith(
                color: containerTextColor,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              '473,411.32',
              style: Styles.textStyle14Bold.copyWith(
                color: HexColor('#2E2E2E'),
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            Text(
              'مدة التحليل',
              style: Styles.textStyle12Medium.copyWith(
                color: containerTextColor,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              'يوم 1',
              style: Styles.textStyle14Bold.copyWith(
                color: HexColor('#2E2E2E'),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget fourthPartOfContainer() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        height: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: HexColor('#FAFAFA'),
        ),
        child: Center(
          child: Row(
            children: [
              Icon(
                Icons.check_circle_outline_outlined,
                color: customOrangeColor,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                'ناجحة',
                style: Styles.textStyle13Medium.copyWith(
                  color: HexColor('#6F6BB2'),
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        height: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: HexColor('#FAFAFA'),
        ),
        child: Center(
          child: Row(
            children: [
              Icon(
                Icons.sports_volleyball_outlined,
                color: HexColor('#6F6BB2'),
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                'شركة ريت للأبحاث',
                style: Styles.textStyle13Medium.copyWith(
                  color: HexColor('#6F6BB2'),
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        height: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: HexColor('#FAFAFA'),
        ),
        child: Center(
          child: Row(
            children: [
              Icon(
                Icons.cloud_done_outlined,
                color: HexColor('#6F6BB2'),
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                'قطاع الأعمال',
                style: Styles.textStyle13Medium.copyWith(
                  color: HexColor('#6F6BB2'),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
