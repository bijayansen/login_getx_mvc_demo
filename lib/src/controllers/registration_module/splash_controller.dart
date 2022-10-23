import 'package:get/get.dart';
import 'package:login_getx_mvc_demo/src/utils/app_configurations.dart';
import 'package:login_getx_mvc_demo/src/local_services/app_routers.dart';

// Splash Page [Controller] To handle UI State & Events in Splash Page.
class SplashController extends GetxController {
  @override
  void onInit() {
    _navigateToPhoneNumberPage();
    super.onInit();
  }

  void _navigateToPhoneNumberPage() => Future.delayed(
      AppConfigurations.splashPageDuration,
      () => Get.offNamed(AppRouters.phoneNumberPageRoute));
}
