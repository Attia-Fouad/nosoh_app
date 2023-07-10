import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nosoh_app/View/home/components/build_home_item.dart';
import 'package:nosoh_app/View/profile/components/build_profile_information_Item.dart';

import '../../core/colors.dart';
import '../home/components/build_filtering_bottom_sheet.dart';
import '../home/components/build_help_bottom_sheet.dart';
import '../home/components/build_search_bar.dart';
import '../home/components/build_sorting_bottom_sheet.dart';
import '../notifications/notifications_screen.dart';
import '../payment/components/payment_method_item.dart';
import 'components/build_Image_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: profileAppbarColors.withOpacity(0.1),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: profileAppbarColors.withOpacity(0.1),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: myColor,
          ),
        ),
        actions: [
          IconButton(
              color: myColor,
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                    top: Radius.circular(50),
                  )),
                  builder: (BuildContext context) {
                    return const BuildHelpBottomSheet();
                  },
                );
              },
              icon: CircleAvatar(
                backgroundColor: myColor,
                child: const Icon(
                  Icons.question_mark_outlined,
                  color: Colors.white,
                ),
              )),
          IconButton(
              color: myColor,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NotificationsScreen(),
                    ));
              },
              icon: CircleAvatar(
                backgroundColor: myColor,
                child: const Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.white,
                ),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // profile image component
            const BuildImageItem(),
            const BuildProfileInformationItem(),
            const SizedBox(
              height: 30,
            ),
            myDivider(),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19.0),
              child: BuildSearchBar(FilteringOnPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                    top: Radius.circular(50),
                  )),
                  builder: (BuildContext context) {
                    return const BuildFilteringBottomSheet();
                  },
                );
              }, sortingOnPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                    top: Radius.circular(50),
                  )),
                  builder: (BuildContext context) {
                    return const BuildSortingBottomSheet();
                  },
                );
              }),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19.0),
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemBuilder: (context, index) => const BuildHomeItem(),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 10,
                      ),
                  itemCount: 2),
            ),
          ],
        ),
      ),
    );
  }
}
