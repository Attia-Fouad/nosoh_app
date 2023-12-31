import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../core/styles.dart';

class BuildEditFieldItem extends StatelessWidget {
  const BuildEditFieldItem({
    super.key,
    this.validator,
    this.onChanged,
    this.controller,
    this.label,
    this.fill = false,
    this.suffixIcon,
    this.prefixIcon,
    this.enabled = true,
    this.maxLines = 1,
  });

  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final bool fill;
  final String? label;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool enabled;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      enabled: enabled,
      validator: validator,
      onChanged: onChanged,
      controller: controller,
      style: Styles.textStyle22Medium,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        filled: true,
        fillColor: formFieldColor,
        errorStyle: Styles.textStyle12Medium,
        labelStyle: Styles.textStyle18Medium,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            width: 1,
            color: formFieldActiveBorderColor,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            width: 1,
            color: formFieldBorderColor,
          ),
        ),
        enabledBorder: fill
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  width: 1,
                  color: formFieldTextCorrectColor,
                ),
              )
            : OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  width: 1,
                  color: formFieldBorderColor,
                ),
              ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            width: 1,
            color: formFieldErrorBorderColor,
          ),
        ),
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            width: 1,
            color: formFieldTextCorrectColor,
          ),
        ),
      ),
    );
  }
}
