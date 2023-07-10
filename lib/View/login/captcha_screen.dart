import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';
import 'package:nosoh_app/core/assets_data.dart';
import 'package:nosoh_app/core/colors.dart';
import 'package:nosoh_app/shared_components.dart';

import '../../core/app_strings.dart';
import '../../core/styles.dart';
import '../base_layout/base_layout_screen.dart';

class CaptchaScreen extends StatefulWidget {
  const CaptchaScreen({super.key});

  @override
  State<CaptchaScreen> createState() => _CaptchaScreenState();
}

class _CaptchaScreenState extends State<CaptchaScreen> {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(AppStrings.login),
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
            Lottie.asset(AssetsData.captchaAnimation),
            const SizedBox(
              height: 25,
            ),
            Text(
              AppStrings.captchaText,
              style: Styles.textStyle30Bold,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '7 + 2',
              style: Styles.textStyle30Bold.copyWith(
                backgroundColor: HexColor('#CE965426').withOpacity(0.15),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // here multi selection item
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedItem = 1;
                    });
                  },
                  child: buildAnswerItems(itemIndex: 1, number: 7),
                ),
                const SizedBox(
                  width: 15,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedItem = 2;
                    });
                  },
                  child: buildAnswerItems(itemIndex: 2, number: 2),
                ),
                const SizedBox(
                  width: 15,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedItem = 3;
                    });
                  },
                  child: buildAnswerItems(itemIndex: 3, number: 9),
                ),
                const SizedBox(
                  width: 15,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedItem = 4;
                    });
                  },
                  child: buildAnswerItems(itemIndex: 4, number: 2),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            defaultButton(
                text: AppStrings.next,
                textStyle: Styles.textStyle24Medium,
                color: selectedItem == 3 ? myColor : myColor.withOpacity(0.5),
                onPressed: () {
                  if (selectedItem == 3) {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BaseLayoutScreen(),
                        ),
                        (route) => false);
                  }
                }),
          ],
        ),
      ),
    );
  }

  buildAnswerItems({required itemIndex, required number}) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: itemIndex == selectedItem ? myColor : HexColor('#F9F9F9'),
          border: Border.all(
            color: myColor,
          )),
      child: Center(
        child: Text(
          '$number',
          style: Styles.textStyle30Bold.copyWith(
            color: itemIndex == selectedItem ? Colors.white : myColor,
          ),
        ),
      ),
    );
  }
}
