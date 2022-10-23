import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_getx_mvc_demo/src/utils/app_colors.dart';
import 'package:login_getx_mvc_demo/src/utils/app_decorations.dart';
import 'package:login_getx_mvc_demo/src/utils/app_typography.dart';

// Re-Usable Primary Text Field With Customizable Properties.
class PrimaryTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final Function(String) onChanged;
  final Function(String) validator;
  final List<TextInputFormatter>? textFormatter;
  final TextInputType keyBoardType;
  final bool isPassword;
  final bool isEnabled;
  final String semanticText;

  const PrimaryTextField(
      {required this.controller,
      required this.labelText,
      required this.hintText,
      required this.onChanged,
      required this.validator,
      this.textFormatter,
      this.keyBoardType = TextInputType.text,
      this.isPassword = false,
      this.isEnabled = true,
      required this.semanticText,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppTypography().getTs14(AppColors.cPrimaryColor, FontWeight.w600),
      enabled: isEnabled,
      controller: controller,
      inputFormatters: textFormatter,
      decoration: _buttonInputDecoration(),
      onChanged: (value) => onChanged(value),
      validator: (value) => validator(value!),
      keyboardType: keyBoardType,
      obscureText: isPassword,
    );
  }

  InputDecoration _buttonInputDecoration() {
    return InputDecoration(
        semanticCounterText: semanticText,
        enabledBorder: AppDecorations().getTextFieldInputBorder(),
        focusedBorder: AppDecorations().getTextFieldInputBorder(),
        border: AppDecorations().getTextFieldInputBorder(),
        labelText: labelText,
        hintText: hintText,
        hintStyle:
            AppTypography().getTs14(AppColors.cSecondaryColor, FontWeight.w600),
        labelStyle: AppTypography().getTs16(AppColors.cPrimaryColor));
  }
}
