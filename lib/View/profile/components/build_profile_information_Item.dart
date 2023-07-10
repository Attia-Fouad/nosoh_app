import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../core/app_strings.dart';
import '../../../core/colors.dart';
import '../../../core/styles.dart';

class BuildProfileInformationItem extends StatelessWidget {
  const BuildProfileInformationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19.0),
      child: Column(children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.ahmed,
                  style: Styles.textStyle22Bold.copyWith(
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  '@analyst_name',
                  style: Styles.textStyle12Regular.copyWith(
                    color: HexColor('#A0A0A0'),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Container(
              width: 160,
              height: 35,
              decoration: BoxDecoration(
                  color: myColor, borderRadius: BorderRadius.circular(8)),
              child: MaterialButton(
                onPressed: () {},
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Text(
                        AppStrings.editProfileInfo,
                        style: Styles.textStyle10Medium,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          AppStrings.lorem1,
          style: Styles.textStyle14Medium,
        ),
      ]),
    );
  }
}
