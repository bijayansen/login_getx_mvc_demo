import 'package:flutter/material.dart';
import 'package:login_getx_mvc_demo/src/utils/app_dimens.dart';
import 'package:login_getx_mvc_demo/src/utils/app_colors.dart';

// Re-Usable Application [Decorations].
class AppDecorations {
  // Text Field Border [Decorations].
  OutlineInputBorder getTextFieldInputBorder() {
    return const OutlineInputBorder(
        borderRadius:
            BorderRadius.all(Radius.circular(AppDimens.textFieldRadius)),
        borderSide: BorderSide(
            color: AppColors.cPrimaryColor,
            width: AppDimens.textFieldBorderWidth));
  }

  // Item Tile Border [Decorations].
  BoxDecoration getCurvedLinedDecoration() {
    return BoxDecoration(
        border: Border.all(color: AppDimens.curvedDecorationColor),
        borderRadius: const BorderRadius.all(
            Radius.circular(AppDimens.curvedDecorationRadius)));
  }
}
