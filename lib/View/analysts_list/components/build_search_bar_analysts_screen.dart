import 'package:flutter/material.dart';

import '../../../core/app_strings.dart';
import '../../../core/assets_data.dart';
import '../../../core/colors.dart';
import '../../../core/styles.dart';

class BuildSearchBarAnalystsScreen extends StatelessWidget {
  const BuildSearchBarAnalystsScreen({
    super.key,
    required this.sortingOnPressed,
  });
  final void Function()? sortingOnPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 45,
            decoration: BoxDecoration(
              border: Border.all(
                color: formFieldBorderColor,
                width: 1,
              ),
              color: formFieldColor,
              borderRadius: BorderRadius.circular(29),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: silverColor,
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Text(
                    AppStrings.search,
                    style:
                        Styles.textStyle18Medium.copyWith(color: silverColor),
                  )
                ],
              ),
            ),
          ),
        ),
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: sortingOnPressed,
          icon: Image.asset(
            AssetsData.icon2Image,
          ),
        ),
      ],
    );
  }
}
