import 'package:flutter/material.dart';
import 'package:nosoh_app/View/base_layout/base_layout_screen.dart';
import 'package:nosoh_app/core/colors.dart';
import 'package:nosoh_app/core/styles.dart';
import 'package:nosoh_app/shared_components.dart';

import '../../core/app_strings.dart';
import 'components/build_confirm_recommendation_item.dart';

class ConfirmingRecommendationScreen extends StatelessWidget {
  const ConfirmingRecommendationScreen({super.key});

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
        child: Column(
          children: [
            const Expanded(child: BuildConfirmRecommendationItem()),
            defaultButton(
                text: AppStrings.next,
                textStyle: Styles.textStyle24Medium,
                color: myColor,
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BaseLayoutScreen(),
                      ),
                      (route) => false);
                }),
            defaultButton(
                text: AppStrings.cancel,
                textStyle: Styles.textStyle24Medium.copyWith(
                  color: suvaGreyColor,
                ),
                color: Colors.white,
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
}
