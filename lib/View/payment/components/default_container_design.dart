import 'package:flutter/material.dart';

import '../../../core/colors.dart';

Widget defaultContainerDesign({required Widget child}) {
  return Container(
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 2,
              offset: const Offset(0, 1)),
        ],
        borderRadius: BorderRadius.circular(10),
        color: sortingContainerColor,
        border: Border.all(
          width: 0.2,
          color: elevationColor,
        )),
    child: child,
  );
}
