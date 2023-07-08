import 'package:flutter/material.dart';

import 'components/build_empty_screen_item.dart';
import 'components/build_filtering_bottom_sheet.dart';
import 'components/build_search_bar.dart';

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
          BuildSearchBar(
              onPressed1: () {
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
              },
              onPressed2: () {}),
          const Expanded(child: BuildEmptyScreenItem()),
        ],
      ),
    );
  }
}
