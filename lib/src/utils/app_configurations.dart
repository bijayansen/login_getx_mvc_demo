import 'package:get/get.dart';
import 'package:login_getx_mvc_demo/src/local_services/app_routers.dart';
import 'package:login_getx_mvc_demo/src/utils/app_dimens.dart';

// Basic Application Configurations/Properties.
class AppConfigurations {
  // Splash Screen [Animation] Duration.
  static const Duration splashPageDuration = Duration(milliseconds: 1000);

  // Page [Transition] Duration.
  static const Duration defaultPageTransitionDuration =
      AppDimens.pageTransitionDuration;

  // Default Page [Transition].
  static const Transition defaultPageTransition = Transition.fadeIn;

  // [Initial Page Route] On Start Up.
  static const String initialRoute = AppRouters.splashPageRoute;

  // Whether To Run The Application With [Testing Or Production Environment].
  static const bool isTestingMode = false;

  // Default [Text Scale Factor] Restriction.
  static const double defaultTextScaleFactor = 1.0;
}
