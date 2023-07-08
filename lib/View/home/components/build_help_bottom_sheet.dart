import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/app_strings.dart';
import '../../../core/assets_data.dart';
import '../../../core/colors.dart';
import '../../../core/styles.dart';
import '../../../shared_components.dart';

class BuildHelpBottomSheet extends StatelessWidget {
  const BuildHelpBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          )),
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Positioned(
              top: -20,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Image.asset(
                  AssetsData.dragImage,
                  color: dragImageColor,
                ),
              ),
            ),
            ListView(
              shrinkWrap: true,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      AppStrings.help,
                      style: Styles.textStyle24Medium.copyWith(color: myColor),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  AppStrings.helpMessage,
                  style: Styles.textStyle15Medium.copyWith(
                    color: containerTextColor,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      color: myColor, borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: IconButton(
                      iconSize: 60,
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        AssetsData.playIcons,
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      AssetsData.whatsAppIcon,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        AppStrings.contactWithCustomerService,
                        style: Styles.textStyle15Medium.copyWith(
                          color: customOrangeColor,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                buildDefaultButton(),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDefaultButton() => defaultButton(
      color: myColor,
      onPressed: () {},
      text: AppStrings.apply,
      textStyle: Styles.textStyle24Medium);
}
