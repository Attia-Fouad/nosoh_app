import 'package:flutter/material.dart';
import 'package:nosoh_app/core/styles.dart';

import '../../core/app_strings.dart';
import '../../core/colors.dart';
import '../../shared_components.dart';
import 'components/coupon_field_item.dart';
import 'components/invoice_details_item.dart';
import 'components/invoice_total_item.dart';
import 'components/payment_method_item.dart';
import 'components/subscribe_details_item.dart';

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
            subscribeDetailsItem(),
            const SizedBox(
              height: 15,
            ),
            couponFieldItem(),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: [
                Text(
                  AppStrings.doNotHaveCode,
                  style: Styles.textStyle12Medium.copyWith(
                    color: suvaGreyColor,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  AppStrings.contactWithCustomerService,
                  style: Styles.textStyle12Medium.copyWith(
                      color: customOrangeColor,
                      decoration: TextDecoration.underline),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            invoiceDetailsItem(),
            const SizedBox(
              height: 5,
            ),
            invoiceTotalItem(),
            const SizedBox(
              height: 30,
            ),
            Text(
              AppStrings.paymentMethod,
              style: Styles.textStyle19Bold,
            ),
            const SizedBox(
              height: 15,
            ),
            paymentMethodItem(),
            const SizedBox(
              height: 11,
            ),
            Text(
              AppStrings.policyAndPrivacy,
              style: Styles.textStyle14Medium.copyWith(
                color: customOrangeColor,
              ),
            ),
            const SizedBox(
              height: 11,
            ),
            Text(
              AppStrings.cancelSubscriptionConditions,
              style: Styles.textStyle14Medium.copyWith(
                color: customOrangeColor,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            defaultButton(
                color: myColor,
                text: AppStrings.subscribeNow,
                textStyle: Styles.textStyle24Medium,
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
