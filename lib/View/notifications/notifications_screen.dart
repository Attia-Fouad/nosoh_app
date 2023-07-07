import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nosoh_app/core/assets_data.dart';

import '../../core/app_strings.dart';
import '../../core/colors.dart';
import 'components/build_day_component.dart';
import 'components/build_notification_item.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              color: myColor,
              onPressed: () {},
              icon: CircleAvatar(
                backgroundColor: myColor,
                child: const Icon(
                  Icons.question_mark_outlined,
                  color: Colors.white,
                ),
              )),
          IconButton(
              color: myColor,
              onPressed: () {},
              icon: CircleAvatar(
                backgroundColor: myColor,
                child: const Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.white,
                ),
              )),
        ],
        centerTitle: true,
        title: const Text(AppStrings.notifications),
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
            const SizedBox(
              height: 20,
            ),
            const BuildDayComponent(text: AppStrings.today),
            const SizedBox(
              height: 15,
            ),
            BuildNotificationItem(
              icon: SvgPicture.asset(
                AssetsData.likeIcon,
                width: 40,
                height: 40,
              ),
              title: AppStrings.notificationTitle1,
              time: AppStrings.notificationTime1,
            ),
            const SizedBox(
              height: 10,
            ),
            BuildNotificationItem(
              icon: SvgPicture.asset(
                AssetsData.handIcon,
                width: 40,
                height: 40,
              ),
              title: AppStrings.notificationTitle2,
              time: AppStrings.notificationTime2,
            ),
            const SizedBox(
              height: 40,
            ),
            const BuildDayComponent(text: AppStrings.date),
            const SizedBox(
              height: 15,
            ),
            BuildNotificationItem(
              icon: SvgPicture.asset(
                AssetsData.handIcon,
                width: 40,
                height: 40,
              ),
              title: AppStrings.notificationTitle3,
              time: AppStrings.notificationTime1,
            ),
            const SizedBox(
              height: 10,
            ),
            BuildNotificationItem(
              icon: SvgPicture.asset(
                AssetsData.handIcon,
                width: 40,
                height: 40,
              ),
              title: AppStrings.notificationTitle4,
              time: AppStrings.notificationTime1,
            ),
          ],
        ),
      ),
    );
  }
}
