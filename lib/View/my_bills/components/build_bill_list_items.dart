import 'package:flutter/material.dart';
import 'package:nosoh_app/View/my_bills/components/build_bill_item.dart';

class BuildBillListItems extends StatelessWidget {
  const BuildBillListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 3,
      itemBuilder: (context, index) => const BuildBillItem(),
      separatorBuilder: (context, index) => const SizedBox(
        height: 15,
      ),
    );
  }
}
