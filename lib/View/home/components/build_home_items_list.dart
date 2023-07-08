import 'package:flutter/material.dart';
import 'package:nosoh_app/View/home/components/build_home_item.dart';

class BuildHomeItemsList extends StatelessWidget {
  const BuildHomeItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => const BuildHomeItem(),
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      itemCount: 3,
    );
  }
}
