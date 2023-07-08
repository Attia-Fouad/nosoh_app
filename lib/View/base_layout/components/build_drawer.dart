import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../core/app_strings.dart';
import '../../../core/assets_data.dart';
import '../../../core/colors.dart';
import '../../../core/styles.dart';
import 'build_drawer_item.dart';

class BuildDrawer extends StatelessWidget {
  const BuildDrawer({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: myColor,
        ),
        Container(
          width: width * 0.7,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(
                  height: 50,
                ),
                CircleAvatar(
                  radius: 40,
                  child: SvgPicture.asset(
                    AssetsData.userIcons,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  AppStrings.ahmedNamed,
                  style: Styles.textStyle22Bold,
                ),
                Text(
                  AppStrings.ahmedUserName,
                  style: Styles.textStyle14Medium.copyWith(
                    color: notificationsTimeColor,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                BuildDrawerItem(
                  onTap: () {},
                  text: AppStrings.profile,
                  icon: Icon(
                    Icons.perm_identity_outlined,
                    size: 30,
                    color: Colors.blue.withOpacity(0.9),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                BuildDrawerItem(
                  onTap: () {},
                  text: AppStrings.myBills,
                  icon: Icon(
                    Icons.receipt_long_outlined,
                    size: 30,
                    color: Colors.blue.withOpacity(0.9),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                BuildDrawerItem(
                  onTap: () {},
                  text: AppStrings.settings,
                  icon: Icon(
                    Icons.settings_outlined,
                    size: 30,
                    color: Colors.blue.withOpacity(0.9),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                BuildDrawerItem(
                  onTap: () {},
                  text: AppStrings.help,
                  icon: Icon(
                    Icons.help_outline_sharp,
                    size: 30,
                    color: Colors.blue.withOpacity(0.9),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                BuildDrawerItem(
                  onTap: () {},
                  text: AppStrings.aboutApp,
                  icon: Icon(
                    Icons.error_outline,
                    size: 30,
                    color: Colors.blue.withOpacity(0.9),
                  ),
                ),
                const Spacer(),
                logoutButton(onTap: () {}),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget logoutButton({
    required onTap,
  }) =>
      InkWell(
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
                Icon(
                  Icons.power_settings_new,
                  size: 30,
                  color: HexColor('#EA3F3F'),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  AppStrings.logout,
                  style: Styles.textStyle15Medium.copyWith(
                    color: HexColor('#EA3F3F'),
                  ),
                ),
              ],
            ),
          )),
        ),
      );
}
