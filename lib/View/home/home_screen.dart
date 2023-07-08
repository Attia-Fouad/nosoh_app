import 'package:flutter/material.dart';

import 'components/build_empty_screen_item.dart';
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
          BuildSearchBar(onPressed1: () {}, onPressed2: () {}),
          const Expanded(child: BuildEmptyScreenItem()),
        ],
      ),
    );
  }
}
