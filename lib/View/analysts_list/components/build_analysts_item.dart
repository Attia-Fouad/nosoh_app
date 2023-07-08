import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/app_strings.dart';
import '../../../core/assets_data.dart';
import '../../../core/colors.dart';
import '../../../core/styles.dart';

class BuildAnalystsItem extends StatelessWidget {
  const BuildAnalystsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Material(
        elevation: 2,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: notificationBorderColor, width: 0.2),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Container(
                color: Colors.grey[100],
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(
                          AssetsData.personImage,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        AppStrings.mosharyMohammed,
                        style: Styles.textStyle15Medium,
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(AssetsData.leftArrowIcon),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: SizedBox(
                  height: 55,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              AppStrings.saleOpinions,
                              style: Styles.textStyle12Medium.copyWith(
                                color: notificationsTimeColor,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              '200',
                              style: Styles.textStyle14Medium.copyWith(
                                color: customOrangeColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              AppStrings.buyOpinions,
                              style: Styles.textStyle12Medium.copyWith(
                                color: notificationsTimeColor,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              '103',
                              style: Styles.textStyle14Medium.copyWith(
                                color: pinBorderCompleteColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              AppStrings.successRate,
                              style: Styles.textStyle12Medium.copyWith(
                                color: notificationsTimeColor,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              '10%',
                              style: Styles.textStyle14Medium.copyWith(
                                color: customOrangeColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            color: Colors.blue.withOpacity(0.3),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  AppStrings.follow,
                                  style: Styles.textStyle12Medium.copyWith(
                                    color: followButtonColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                SvgPicture.asset(
                                  AssetsData.addIcon,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
