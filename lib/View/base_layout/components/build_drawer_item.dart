import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/assets_data.dart';
import '../../../core/colors.dart';
import '../../../core/styles.dart';

class BuildDrawerItem extends StatelessWidget {
  const BuildDrawerItem(
      {super.key, required this.text, required this.icon, required this.onTap});
  final String text;
  final Widget icon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: sortingContainerColor,
        ),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              icon,
              const SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: Styles.textStyle15Medium,
              ),
              const Spacer(),
              SvgPicture.asset(
                AssetsData.leftArrowIcon,
              )
            ],
          ),
        )),
      ),
    );
  }
}
