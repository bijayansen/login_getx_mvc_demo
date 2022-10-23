import 'package:flutter/material.dart';
import 'package:login_getx_mvc_demo/src/utils/app_dimens.dart';
import 'package:login_getx_mvc_demo/src/utils/app_colors.dart';
import 'package:login_getx_mvc_demo/src/utils/app_typography.dart';

// Re-Usable Primary Application Button With Customizable Properties.
class FlexibleAppButton extends StatelessWidget {
  final bool isFullWidth;
  final String title;
  final VoidCallback onPressed;
  final String semanticLabel;

  const FlexibleAppButton({
    this.isFullWidth = false,
    required this.title,
    required this.onPressed,
    required this.semanticLabel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(),
      child: Container(
          padding: const EdgeInsets.symmetric(
              vertical: AppDimens.buttonVerticalPadding),
          decoration: const BoxDecoration(
            color: AppColors.cPrimaryColor,
            borderRadius: BorderRadius.all(
              Radius.circular(AppDimens.buttonRadius),
            ),
          ),
          child: _showButton()),
    );
  }

  Widget _showButton() {
    return isFullWidth ? Center(child: _showButtonTitle()) : _showButtonTitle();
  }

  Widget _showButtonTitle() {
    return Text(
      title,
      semanticsLabel: semanticLabel,
      style: AppTypography().getTs16(AppColors.cBackgroundColor),
    );
  }
}
