import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../core/styles.dart';

class BuildSettingsItem extends StatelessWidget {
  const BuildSettingsItem(
      {super.key,
      this.firstIcon,
      this.lastIcon,
      this.text,
      required this.onTap});
  final Widget? firstIcon;
  final Widget? lastIcon;
  final String? text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
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
            children: [
              if (firstIcon != null) firstIcon!,
              const SizedBox(
                width: 30,
              ),
              if (text != null)
                Text(
                  text!,
                  style: Styles.textStyle15Medium,
                ),
              const Spacer(),
              if (lastIcon != null) lastIcon!,
            ],
          ),
        ),
      ),
    );
  }
}
