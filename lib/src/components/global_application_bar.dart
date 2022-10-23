import 'package:flutter/material.dart';
import 'package:login_getx_mvc_demo/src/utils/app_colors.dart';
import 'package:login_getx_mvc_demo/src/utils/app_dimens.dart';
import 'package:login_getx_mvc_demo/src/utils/app_typography.dart';

// Global Application Bar With Customizable Properties.
class GlobalApplicationBar extends StatelessWidget
    implements PreferredSizeWidget {
  final bool isLeadingIcon;
  final String? appBarTitle;
  final bool appBarBackEnable;
  final List<Widget>? actions;
  final Color appBarBackgroundColor;

  const GlobalApplicationBar(
      {this.isLeadingIcon = false,
      this.appBarBackEnable = true,
      this.appBarTitle,
      this.actions,
      this.appBarBackgroundColor = AppColors.cBackgroundColor,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: appBarBackgroundColor,
      elevation: AppDimens.appBarElevation,
      title: _showAppBarTitle(),
      actions: actions,
    );
  }

  Widget _showAppBarTitle() {
    return Text(
      appBarTitle ?? AppDimens.blankString,
      style: AppTypography().getTs16(AppColors.cPrimaryColor, FontWeight.w500),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
