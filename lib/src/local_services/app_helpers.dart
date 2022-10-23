import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:login_getx_mvc_demo/src/network_services/network_constants.dart';
import 'package:login_getx_mvc_demo/src/utils/app_dimens.dart';
import 'package:login_getx_mvc_demo/src/utils/typo_constants/global_typos.dart';
import 'package:login_getx_mvc_demo/src/utils/app_colors.dart';

class AppHelpers {
  // Checks & Notifies About [Network Connectivity] Presence.
  Future<bool> isNetworkPresent() async {
    try {
      final result =
          await InternetAddress.lookup(NetworkConstants.networkPingDefaultLink);
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      debugPrint(_.toString());
      return false;
    }
  }

  // Snack-Bar When [Improper Status Response] Is Received From Back-End.
  void showSomethingWrongSnack() {
    showCustomSnack(
      GlobalTypos.serverError,
      GlobalTypos.oopsSomethingText,
      SnackPosition.BOTTOM,
    );
  }

  // Snack-Bar When [Absence Of Network Connectivity] Is Detected.
  void showNetworkErrorSnack() {
    showCustomSnack(
      GlobalTypos.connectivityIssue,
      GlobalTypos.pleaseCheckYourInternetText,
      SnackPosition.BOTTOM,
    );
  }

  // GetX Custom [Snack Bar] Element
  void showCustomSnack(
      String heading, String subHeading, SnackPosition position) {
    Get.snackbar(
      heading,
      subHeading,
      snackPosition: position,
      colorText: AppColors.cPrimaryColor,
      backgroundColor: AppColors.cBackgroundColor,
      borderColor: AppColors.cPrimaryColor,
      borderWidth: AppDimens.snackBarBorderWidth,
    );
  }

  // Generates Required [Size] Of The Application Loader.
  double getAppLogoWidth() {
    return MediaQuery.of(Get.context!).size.width * 0.4;
  }
}
