import 'package:flutter/material.dart';

import 'components/build_empty_screen_item.dart';
import 'components/build_filtering_bottom_sheet.dart';
import 'components/build_search_bar.dart';
import 'components/build_sorting_bottom_sheet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(19.0),
      child: Column(
        children: [
          BuildSearchBar(FilteringOnPressed: () {
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
          const Expanded(child: BuildEmptyScreenItem()),
        ],
      ),
    );
  }
}
