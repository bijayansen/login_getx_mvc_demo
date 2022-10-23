import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:login_getx_mvc_demo/src/local_services/app_routers.dart';

// Phone Number Page [Controller] To handle UI State & Events in Phone Number Page.
class PhoneNumberController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();
  GlobalKey<FormState> phoneNumberFormKey = GlobalKey<FormState>();
  late String _phoneNumber;

  void goToOtpVerificationPage() =>
      Get.toNamed(AppRouters.otpVerificationPageRoute, arguments: [
        {'phoneNumber': _phoneNumber}
      ]);

  void savePhoneNumber(phoneNumber) => _phoneNumber = phoneNumber;

  void submitForm() {
    if (phoneNumberFormKey.currentState!.validate()) {
      goToOtpVerificationPage();
    }
  }

  @override
  void onClose() {
    phoneNumberController.dispose();
    super.onClose();
  }
}
