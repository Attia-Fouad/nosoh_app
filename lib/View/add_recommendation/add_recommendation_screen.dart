import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nosoh_app/View/add_recommendation/components/build_recommendation_screen_Item.dart';
import 'package:nosoh_app/View/add_recommendation/confirming_recommendation_Screen.dart';
import 'package:nosoh_app/core/assets_data.dart';
import 'package:nosoh_app/core/colors.dart';
import 'package:nosoh_app/core/styles.dart';
import 'package:nosoh_app/shared_components.dart';

import '../../core/app_strings.dart';

class AddRecommendationScreen extends StatelessWidget {
  const AddRecommendationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(AppStrings.addNewOpinion),
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
            const SizedBox(
              height: 10,
            ),
            Text(
              AppStrings.addRecommendationMessage,
              style: Styles.textStyle14Bold.copyWith(
                color: myColor,
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            BuildRecommendationScreenItem(
              text: AppStrings.companyNameWithStar,
              icon: arrowDownIcon(),
            ),
            const SizedBox(
              height: 22,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: BuildRecommendationScreenItem(
                    text: AppStrings.currentPrice,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: BuildRecommendationScreenItem(
                    text: AppStrings.theProcess,
                    icon: arrowDownIcon(),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Expanded(
                  child: BuildRecommendationScreenItem(
                    text: AppStrings.targetPriceWithStar,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: BuildRecommendationScreenItem(
                    text: AppStrings.stopLosingWithStar,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Expanded(
                  child: BuildRecommendationScreenItem(
                    text: AppStrings.priceChanges,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: BuildRecommendationScreenItem(
                    text: AppStrings.losingChanges,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: BuildRecommendationScreenItem(
                    text: AppStrings.analysisType,
                    icon: arrowDownIcon(),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: BuildRecommendationScreenItem(
                    text: AppStrings.periodWithStar,
                    icon: arrowDownIcon(),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            const BuildRecommendationScreenItem(
              height: 100,
              text: AppStrings.whatIsYouAnalysis,
            ),
            const SizedBox(
              height: 22,
            ),
            BuildRecommendationScreenItem(
              text: AppStrings.attachImage,
              icon: Icon(
                Icons.attachment_outlined,
                size: 20,
                color: suvaGreyColor,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              AppStrings.acceptedEXE,
              style: Styles.textStyle12Medium.copyWith(
                color: silverColor,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            defaultButton(
              color: myColor,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const ConfirmingRecommendationScreen(),
                    ));
              },
              text: AppStrings.next,
              textStyle: Styles.textStyle24Medium,
            ),
          ],
        ),
      ),
    );
  }

  Widget arrowDownIcon() => SvgPicture.asset(AssetsData.arrowDownIcon);
}
