import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../core/styles.dart';
import '../on_boarding_screen.dart';

class BuildOnBoardingItem extends StatelessWidget {
  final BoardingModel model;

  const BuildOnBoardingItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Lottie.asset(model.animations),
        const SizedBox(
          height: 42,
        ),
        Text(
          model.title,
          style: Styles.textStyle30Bold,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          model.body,
          style: Styles.textStyle16Medium,
        ),
      ],
    );
  }
}
