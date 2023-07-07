import 'package:flutter/material.dart';
import 'package:nosoh_app/core/app_strings.dart';
import 'package:nosoh_app/core/assets_data.dart';
import 'package:nosoh_app/core/colors.dart';
import 'package:nosoh_app/core/styles.dart';
import 'package:nosoh_app/shared_components.dart';

import '../login/login_screen.dart';
import 'components/build_boarding_Item.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class BoardingModel {
  final String animations;
  final String title;
  final String body;

  BoardingModel(
      {required this.animations, required this.title, required this.body});
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardingController = PageController();
  int currentIndex = 0;
  List<BoardingModel> boarding = [
    BoardingModel(
      animations: AssetsData.onBoardingAnimation1,
      body: AppStrings.onBoardingBody1,
      title: AppStrings.onBoardingTitle1,
    ),
    BoardingModel(
      animations: AssetsData.onBoardingAnimation2,
      body: AppStrings.onBoardingBody2,
      title: AppStrings.onBoardingTitle2,
    ),
    BoardingModel(
      animations: AssetsData.onBoardingAnimation3,
      body: AppStrings.onBoardingBody3,
      title: AppStrings.onBoardingTitle3,
    ),
  ];
  bool isLast = false;

  void submit() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(19.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: PageView.builder(
                  itemBuilder: (context, index) => BuildOnBoardingItem(
                    model: boarding[index],
                  ),
                  itemCount: boarding.length,
                  controller: boardingController,
                  physics: const BouncingScrollPhysics(),
                  onPageChanged: (int index) {
                    setState(() {
                      currentIndex = index;
                    });
                    if (index == boarding.length - 1) {
                      setState(() {
                        isLast = true;
                      });
                    } else {
                      setState(() {
                        isLast = false;
                      });
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: customOrangeColor,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: currentIndex > 0
                        ? customOrangeColor
                        : customOrangeColor.withOpacity(0.5),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: currentIndex > 1
                        ? customOrangeColor
                        : customOrangeColor.withOpacity(0.5),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              if (currentIndex == 2)
                defaultButton(
                  color: myColor,
                  text: AppStrings.startRegistering,
                  textStyle: Styles.textStyle24Medium,
                  onPressed: () {
                    submit();
                  },
                ),
              if (currentIndex == 2)
                const SizedBox(
                  height: 20,
                ),
              if (currentIndex < 2)
                defaultButton(
                  color: myColor,
                  text: AppStrings.next,
                  textStyle: Styles.textStyle24Medium,
                  onPressed: () {
                    if (isLast) {
                      submit();
                    } else {
                      boardingController.nextPage(
                          duration: const Duration(
                            milliseconds: 750,
                          ),
                          curve: Curves.fastLinearToSlowEaseIn);
                    }
                  },
                ),
              if (currentIndex < 2)
                if (currentIndex < 2)
                  const SizedBox(
                    height: 5,
                  ),
              if (currentIndex < 2)
                TextButton(
                    onPressed: () {
                      submit();
                    },
                    child: Text(
                      AppStrings.skip,
                      style: Styles.textStyle24Medium.copyWith(
                        color: silverColor,
                      ),
                    )),
            ],
          ),
        ),
      ),
    );
  }
}
