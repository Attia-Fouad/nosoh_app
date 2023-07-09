import 'package:flutter/material.dart';

Widget defaultButton(
        {double? height,
        required color,
        required onPressed,
        text,
        textStyle}) =>
    Container(
      width: double.infinity,
      height: height ?? 62,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
