import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/app_strings.dart';
import '../../../core/assets_data.dart';
import '../../../core/colors.dart';
import '../../../core/styles.dart';
import 'default_container_design.dart';

Widget paymentMethodItem() {
  return defaultContainerDesign(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AssetsData.madaIcon,
                width: 50,
                height: 50,
              ),
              const SizedBox(
                width: 22,
              ),
              Text(AppStrings.mada,
                  style: Styles.textStyle14Medium.copyWith(color: myColor)),
              const Spacer(),
              const Icon(
                Icons.check,
                color: Colors.purple,
              )
            ],
          ),
          myDivider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AssetsData.visaIcon,
                width: 50,
                height: 50,
              ),
              const SizedBox(
                width: 22,
              ),
              Text(AppStrings.masterCard,
                  style: Styles.textStyle14Medium.copyWith(color: myColor)),
              const Spacer(),
              if (false)
                const Icon(
                  Icons.check,
                  color: Colors.purple,
                )
            ],
          ),
        ],
      ),
    ),
  );
}

Widget myDivider() => Container(
      width: double.infinity,
      height: 0.5,
      color: Colors.grey[300],
    );
