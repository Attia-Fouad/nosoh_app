import 'package:flutter/material.dart';
import 'package:nosoh_app/View/base_layout/controller/app_cubit/app_cubit.dart';

import '../../../core/app_strings.dart';
import '../../../core/assets_data.dart';
import '../../../core/colors.dart';
import '../../../core/styles.dart';

class BuildEmptyScreenItem extends StatelessWidget {
  const BuildEmptyScreenItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AssetsData.emptyImage,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              AppStrings.emptyScreen,
              style: Styles.textStyle30Bold,
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStrings.toFollowMessage,
                  style: Styles.textStyle14Medium,
                ),
                TextButton(
                  onPressed: () {
                    AppCubit.get(context).changeBottomNavBar(1);
                  },
                  child: Text(
                    AppStrings.goToMessage,
                    style: Styles.textStyle14Medium.copyWith(
                      decoration: TextDecoration.underline,
                      color: myColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
