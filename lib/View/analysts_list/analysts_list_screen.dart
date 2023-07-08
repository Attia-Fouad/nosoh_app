import 'package:flutter/material.dart';

import '../home/components/build_sorting_bottom_sheet.dart';
import 'components/build_analysts_item.dart';
import 'components/build_search_bar_analysts_screen.dart';

class AnalystsListScreen extends StatelessWidget {
  const AnalystsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(19.0),
      child: Column(
        children: [
          BuildSearchBarAnalystsScreen(
            sortingOnPressed: () {
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
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                height: 15,
              ),
              itemCount: 10,
              itemBuilder: (context, index) => const BuildAnalystsItem(),
            ),
          ),
        ],
      ),
    );
  }
}
