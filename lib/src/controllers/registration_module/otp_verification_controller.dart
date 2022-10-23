import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_getx_mvc_demo/src/local_services/app_helpers.dart';
import 'package:login_getx_mvc_demo/src/local_services/app_routers.dart';
import 'package:login_getx_mvc_demo/src/utils/app_dimens.dart';
import 'package:login_getx_mvc_demo/src/utils/typo_constants/registration_module/otp_verification_typos.dart';

// OTP Verification Page [Controller] To handle UI State & Events in OTP Verification Page.
class OtpVerificationController extends GetxController {
  TextEditingController otpVerificationController = TextEditingController();
  GlobalKey<FormState> otpFormKey = GlobalKey<FormState>();
  final String userPhoneNumber = Get.arguments[0]['phoneNumber'];
  late String _otpText;

  void _goToDashboardPage() => Get.toNamed(AppRouters.dashboardPageRoute);

  void saveOtp(phoneNumber) => _otpText = phoneNumber;

  void submitForm() {
    if (otpFormKey.currentState!.validate()) {
      if (_otpText.length != AppDimens.otpFieldSize) {
        showInvalidOtpSnack();
      } else {
        _goToDashboardPage();
      }
    }
  }

  void showInvalidOtpSnack() {
    AppHelpers().showCustomSnack(OtpVerificationPageTypos.invalidOtp,
        OtpVerificationPageTypos.pleaseProvideAValidOtp, SnackPosition.BOTTOM);
  }

  @override
  void onClose() {
    otpVerificationController.dispose();
    super.onClose();
  }
}
