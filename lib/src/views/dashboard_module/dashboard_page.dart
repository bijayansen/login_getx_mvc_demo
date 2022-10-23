import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_getx_mvc_demo/src/components/app_loader.dart';
import 'package:login_getx_mvc_demo/src/controllers/dashboard_module/dashboard_controller.dart';
import 'package:login_getx_mvc_demo/src/utils/app_decorations.dart';
import 'package:login_getx_mvc_demo/src/utils/app_dimens.dart';
import 'package:login_getx_mvc_demo/src/local_services/space_manager.dart';
import 'package:login_getx_mvc_demo/src/utils/app_colors.dart';
import 'package:login_getx_mvc_demo/src/utils/app_typography.dart';
import 'package:login_getx_mvc_demo/src/utils/typo_constants/dashboard_module/dashboard_page_typos.dart';
import 'package:login_getx_mvc_demo/src/components/global_application_bar.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({Key? key}) : super(key: key);
  final DashboardController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          const GlobalApplicationBar(appBarTitle: DashboardPageTypos.dashboard),
      backgroundColor: AppColors.cBackgroundColor,
      body: _showMainBody(),
    );
  }

  Widget _showMainBody() {
    return Obx(() => _controller.isLoading.value
        ? AppLoader(isShowLoader: _controller.isLoading.value)
        : _showBody());
  }

  Widget _showBody() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(AppDimens.defaultPagePadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SpaceManager().secondarySpacing(),
              _showHeading(),
              SpaceManager().secondarySpacing(),
              _showUsersList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _showHeading() {
    return Text(DashboardPageTypos.hereAreSomeDummyText,
        style: AppTypography().getTs16(AppColors.cPrimaryColor));
  }

  Widget _showUsersList() {
    return ListView.separated(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemCount: _controller.userListResponseList.length,
      itemBuilder: (BuildContext context, int userIndex) {
        return _showListTile(context, userIndex);
      },
      separatorBuilder: (BuildContext context, int index) {
        return SpaceManager().tertiarySpacing();
      },
    );
  }

  Widget _showListTile(BuildContext context, int userIndex) {
    return Container(
      padding: const EdgeInsets.all(AppDimens.tertiaryAppSpace),
      decoration: AppDecorations().getCurvedLinedDecoration(),
      child: _showUserName(userIndex),
    );
  }

  Widget _showUserName(int userIndex) {
    return Text(_controller.userListResponseList[userIndex].name,
        style: AppTypography().getTs16(AppColors.cPrimaryColor));
  }
}
