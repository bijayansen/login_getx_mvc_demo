import 'package:get/get.dart';
import 'package:login_getx_mvc_demo/src/views/dashboard_module/dashboard_page.dart';
import 'package:login_getx_mvc_demo/src/views/registration_module/otp_verification_page.dart';
import 'package:login_getx_mvc_demo/src/binders/dashboard_module_binders.dart';
import 'package:login_getx_mvc_demo/src/binders/registration_module_binders.dart';
import 'package:login_getx_mvc_demo/src/views/registration_module/phone_number_page.dart';
import 'package:login_getx_mvc_demo/src/views/registration_module/splash_page.dart';

class AppRouters {
  // Registration Module Routes
  static const String splashPageRoute = '/';
  static const String phoneNumberPageRoute = '/phone-number';
  static const String otpVerificationPageRoute = '/otp-verification';

  // Dashboard Module Routes
  static const String dashboardPageRoute = '/dashboard';

  appRoutes() => [
        // Registration Module Route Mappings
        GetPage(
            name: splashPageRoute,
            page: () => SplashPage(),
            binding: SplashPageBinding()),
        GetPage(
            name: phoneNumberPageRoute,
            page: () => PhoneNumberPage(),
            binding: PhoneNumberPageBinding()),
        GetPage(
            name: otpVerificationPageRoute,
            page: () => OtpVerificationPage(),
            binding: OtpVerificationPageBinding()),

        // Dashboard Module Route Mappings
        GetPage(
            name: dashboardPageRoute,
            page: () => DashboardPage(),
            binding: DashboardPageBinding()),
      ];
}
