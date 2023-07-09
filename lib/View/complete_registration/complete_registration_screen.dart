import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nosoh_app/core/colors.dart';
import 'package:nosoh_app/shared_components.dart';

import '../../core/app_strings.dart';
import '../../core/assets_data.dart';
import '../../core/styles.dart';
import 'complete_registration_screen2.dart';
import 'components/build_complete_registration_item.dart';

class CompleteRegistrationScreen extends StatelessWidget {
  const CompleteRegistrationScreen({super.key});

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
        child: ListView(
          shrinkWrap: true,
          children: [
            buildIndicatorItem(),
            const SizedBox(
              height: 36,
            ),
            Text(
              AppStrings.letsCompleteYorProfile,
              style: Styles.textStyle30Bold,
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              AppStrings.needSomeInfo,
              style: Styles.textStyle16Medium,
            ),
            const SizedBox(
              height: 40,
            ),
            const BuildCompleteRegistrationItem(
              text: AppStrings.idNumber,
            ),
            const SizedBox(
              height: 20,
            ),
            const BuildCompleteRegistrationItem(
              text: AppStrings.birthdate,
            ),
            const SizedBox(
              height: 50,
            ),
            defaultButton(
                color: myColor.withOpacity(0.5),
                text: AppStrings.next,
                textStyle: Styles.textStyle24Medium,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const CompleteRegistrationScreen2(),
                      ));
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
                  dashColor: suvaGreyColor,
                  dashGapLength: 2.0,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 0.0,
                ),
              ),
              Column(
                children: [
                  SvgPicture.asset(
                    AssetsData.moneyIcon,
                    color: suvaGreyColor,
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Text(
                    AppStrings.financeinformation,
                    style: Styles.textStyle11Bold.copyWith(
                      color: suvaGreyColor,
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
                  dashColor: suvaGreyColor,
                  dashGapLength: 2.0,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 0.0,
                ),
              ),
              Column(
                children: [
                  SvgPicture.asset(
                    AssetsData.warningIcon,
                    color: suvaGreyColor,
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Text(
                    AppStrings.dangerAware,
                    style: Styles.textStyle11Bold.copyWith(
                      color: suvaGreyColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
