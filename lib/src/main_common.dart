import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:login_getx_mvc_demo/src/utils/app_configurations.dart';
import 'package:login_getx_mvc_demo/src/local_services/app_routers.dart';

class MainCommon {
  void runApplication() => runApp(const MainApplication());
}

// [Root Widget] Of The Application.
class MainApplication extends StatelessWidget {
  const MainApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _showApplication();
  }

  Widget _showApplication() {
    return GetMaterialApp(
      debugShowCheckedModeBanner: AppConfigurations.isTestingMode,
      getPages: AppRouters().appRoutes(),
      initialRoute: AppConfigurations.initialRoute,
      defaultTransition: AppConfigurations.defaultPageTransition,
      transitionDuration: AppConfigurations.defaultPageTransitionDuration,
      builder: (context, mainApplication) {
        final MediaQueryData mediaQueryData = MediaQuery.of(context);
        return _showTextScaledApplication(mediaQueryData, mainApplication);
      },
    );
  }

  Widget _showTextScaledApplication(
      MediaQueryData mediaQueryData, Widget? mainApplication) {
    return MediaQuery(
      data: mediaQueryData.copyWith(
          textScaleFactor: AppConfigurations.defaultTextScaleFactor),
      child: mainApplication!,
    );
  }
}
