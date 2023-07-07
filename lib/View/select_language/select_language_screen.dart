import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nosoh_app/View/on_boarding/on_boarding_screen.dart';
import 'package:nosoh_app/core/assets_data.dart';
import 'package:nosoh_app/core/colors.dart';
import 'package:nosoh_app/core/styles.dart';

import '../../core/app_strings.dart';
import '../../shared_components.dart';

class SelectLanguageScreen extends StatefulWidget {
  const SelectLanguageScreen({super.key});

  @override
  State<SelectLanguageScreen> createState() => _SelectLanguageScreenState();
}

bool isArabic = true;

class _SelectLanguageScreenState extends State<SelectLanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(19.0),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              Lottie.asset(AssetsData.languageAnimation),
              const SizedBox(
                height: 20,
              ),
              Text(
                AppStrings.selectLanguage,
                style: Styles.textStyle30Bold,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                AppStrings.youCanChangeItLater,
                style: Styles.textStyle16Medium,
              ),
              const SizedBox(
                height: 27,
              ),
              Row(
                children: [
                  CustomCheckBox(
                    value: isArabic,
                    shouldShowBorder: true,
                    borderColor: Colors.black,
                    checkedFillColor: myColor,
                    borderRadius: 50,
                    borderWidth: 1,
                    checkBoxSize: 20,
                    onChanged: (val) {
                      if (val) {
                        setState(() {
                          isArabic = true;
                        });
                      }
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    AppStrings.arabic,
                    style: Styles.textStyle14Bold,
                  ),
                ],
              ),
              Row(
                children: [
                  CustomCheckBox(
                    value: !isArabic,
                    shouldShowBorder: true,
                    borderColor: Colors.black,
                    checkedFillColor: myColor,
                    borderRadius: 50,
                    borderWidth: 1,
                    checkBoxSize: 20,
                    onChanged: (val) {
                      if (val) {
                        setState(() {
                          isArabic = false;
                        });
                      }
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    AppStrings.english,
                    style: Styles.textStyle14Bold,
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              defaultButton(
                  color: myColor,
                  text: AppStrings.next,
                  textStyle: Styles.textStyle24Medium,
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OnBoardingScreen(),
                        ),
                        (route) => false);
                  }),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
