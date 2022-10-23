import 'package:get/get.dart';
import 'package:login_getx_mvc_demo/src/controllers/dashboard_module/dashboard_controller.dart';

/* [Binders] allows [GetX] to know which screen is being displayed when a
particular [Controller] is used and to know where and how to dispose of it. */

class DashboardPageBinding extends Bindings {
  @override
  void dependencies() =>
      Get.lazyPut<DashboardController>(() => DashboardController());
}
