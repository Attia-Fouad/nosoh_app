import 'package:flutter/material.dart';

import '../../../core/assets_data.dart';
import '../../../core/colors.dart';

class BuildImageItem extends StatelessWidget {
  const BuildImageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Align(
            alignment: AlignmentDirectional.topCenter,
            child: Container(
              height: 30,
              color: profileAppbarColors.withOpacity(0.1),
            ),
          ),
          const Positioned(
            bottom: 2,
            right: 19,
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(
                AssetsData.personImage,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
