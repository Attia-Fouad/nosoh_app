import 'package:flutter/material.dart';
import 'package:nosoh_app/core/styles.dart';

import '../../core/app_strings.dart';
import '../../core/colors.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(AppStrings.payment),
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
              height: 15,
            ),
            Text(
              AppStrings.subscriptionDetails,
              style: Styles.textStyle19Bold,
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 2,
                        offset: const Offset(0, 1)),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: sortingContainerColor,
                  border: Border.all(
                    width: 0.2,
                    color: notificationBorderColor,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
