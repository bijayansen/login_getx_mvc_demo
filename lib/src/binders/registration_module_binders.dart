import 'package:get/get.dart';
import 'package:login_getx_mvc_demo/src/controllers/registration_module/otp_verification_controller.dart';
import 'package:login_getx_mvc_demo/src/controllers/registration_module/phone_number_controller.dart';
import 'package:login_getx_mvc_demo/src/controllers/registration_module/splash_controller.dart';

/* [Binders] allows [GetX] to know which screen is being displayed when a
particular [Controller] is used and to know where and how to dispose of it. */

class SplashPageBinding extends Bindings {
  @override
  void dependencies() =>
      Get.lazyPut<SplashController>(() => SplashController());
}

class PhoneNumberPageBinding extends Bindings {
  @override
  void dependencies() =>
      Get.lazyPut<PhoneNumberController>(() => PhoneNumberController());
}

class OtpVerificationPageBinding extends Bindings {
  @override
  void dependencies() =>
      Get.lazyPut<OtpVerificationController>(() => OtpVerificationController());
}
