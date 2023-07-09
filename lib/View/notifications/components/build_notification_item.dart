import 'package:flutter/material.dart';

import '../../../core/styles.dart';

class BuildNotificationItem extends StatelessWidget {
  const BuildNotificationItem(
      {super.key, required this.icon, required this.time, required this.title});
  final Widget icon;
  final String time;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon,
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    time,
                    style: Styles.textStyle12Regular,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    title,
                    maxLines: null,
                    style: Styles.textStyle15Medium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
