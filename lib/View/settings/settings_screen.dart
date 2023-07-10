import 'package:flutter/material.dart';
import 'package:nosoh_app/core/assets_data.dart';

import '../../core/app_strings.dart';
import '../../core/colors.dart';

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
            Container(
              decoration: BoxDecoration(
                color: sortingContainerColor,
                border: Border.all(
                  color: notificationBorderColor.withOpacity(0.5),
                  width: 0.2,
                ),
                boxShadow: [
                  BoxShadow(
                    color: elevationColor.withOpacity(0.16),
                    offset: const Offset(0, 1),
                    blurRadius: 2,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
