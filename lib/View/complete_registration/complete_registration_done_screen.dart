import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:nosoh_app/View/base_layout/base_layout_screen.dart';
import 'package:nosoh_app/core/colors.dart';
import 'package:nosoh_app/shared_components.dart';

import '../../core/app_strings.dart';
import '../../core/assets_data.dart';
import '../../core/styles.dart';

class CompleteRegistrationDoneScreen extends StatelessWidget {
  const CompleteRegistrationDoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(AppStrings.profile),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_rounded)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(19.0),
        child: Column(
          children: [
            buildIndicatorItem(),
            Center(
              child: Column(
                children: [
                  Lottie.asset(AssetsData.doneAnimation),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    AppStrings.doneMessage,
                    style: Styles.textStyle30Bold,
                  ),
                ],
              ),
            ),
            const Spacer(),
            defaultButton(
                color: myColor,
                text: AppStrings.next,
                textStyle: Styles.textStyle24Medium,
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BaseLayoutScreen(),
                      ),
                      (route) => false);
                }),
          ],
        ),
      ),
    );
  }

  buildIndicatorItem() => Padding(
        padding: const EdgeInsets.all(19.0),
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  SvgPicture.asset(AssetsData.informationIcon),
                  const SizedBox(
                    height: 11,
                  ),
                  Text(
                    AppStrings.personalInformation,
                    style: Styles.textStyle11Bold,
                  ),
                ],
              ),
              Expanded(
                child: DottedLine(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.center,
                  lineLength: double.infinity,
                  lineThickness: 1.0,
                  dashLength: 2.0,
                  dashColor: customBlue,
                  dashGapLength: 2.0,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 0.0,
                ),
              ),
              Column(
                children: [
                  SvgPicture.asset(
                    AssetsData.moneyIcon,
                    color: customBlue,
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Text(
                    AppStrings.financeinformation,
                    style: Styles.textStyle11Bold.copyWith(
                      color: customBlue,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: DottedLine(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.center,
                  lineLength: double.infinity,
                  lineThickness: 1.0,
                  dashLength: 2.0,
                  dashColor: customBlue,
                  dashGapLength: 2.0,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 0.0,
                ),
              ),
              Column(
                children: [
                  SvgPicture.asset(
                    AssetsData.warningIcon,
                    color: customBlue,
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Text(
                    AppStrings.dangerAware,
                    style: Styles.textStyle11Bold.copyWith(
                      color: customBlue,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
