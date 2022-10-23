import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_getx_mvc_demo/src/local_services/app_helpers.dart';
import 'package:login_getx_mvc_demo/src/utils/asset_constants.dart';
import 'package:login_getx_mvc_demo/src/controllers/registration_module/splash_controller.dart';
import 'package:login_getx_mvc_demo/src/utils/app_dimens.dart';

class SplashPage extends StatelessWidget {
  final SplashController _controller = Get.find();

  SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppDimens.scaffoldColor,
      body: _showBody(),
    );
  }

  Widget _showBody() {
    return Center(child: _showHeroLogo());
  }

  Widget _showHeroLogo() {
    return SizedBox(
        width: AppHelpers().getAppLogoWidth(),
        child: Image.asset(AssetConstants.rmAppLogo));
  }
}
