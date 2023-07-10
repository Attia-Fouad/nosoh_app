import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nosoh_app/core/assets_data.dart';
import 'package:nosoh_app/core/styles.dart';

import '../../core/app_strings.dart';
import 'components/build_settings_item.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(AppStrings.settings),
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
            Image.asset(AssetsData.settingsImage),
            const SizedBox(
              height: 40,
            ),
            BuildSettingsItem(
              text: AppStrings.notifications,
              firstIcon: Icon(
                Icons.notifications_none_outlined,
                color: HexColor('#6F6BB2'),
              ),
              lastIcon: SvgPicture.asset(AssetsData.leftArrowIcon),
              onTap: () {},
            ),
            const SizedBox(
              height: 15,
            ),
            BuildSettingsItem(
              text: AppStrings.fingerPrint,
              firstIcon: SvgPicture.asset(AssetsData.faceIcon),
              lastIcon: SvgPicture.asset(AssetsData.leftArrowIcon),
              onTap: () {},
            ),
            const SizedBox(
              height: 15,
            ),
            BuildSettingsItem(
              text: AppStrings.changeLAnguage,
              firstIcon: SvgPicture.asset(AssetsData.translateIcon),
              lastIcon: Text(
                AppStrings.english,
                style: Styles.textStyle15Bold.copyWith(
                  color: HexColor('#8D8D8D'),
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
