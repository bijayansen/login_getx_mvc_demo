import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:login_getx_mvc_demo/src/utils/app_dimens.dart';

// Customized Application Loader Via [FlutterSpinKit Plugin].
class AppLoader extends StatelessWidget {
  final bool isShowLoader;

  const AppLoader({required this.isShowLoader, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isShowLoader ? _showLoader(context) : const SizedBox();
  }

  Widget _showLoader(BuildContext context) {
    return AbsorbPointer(
        child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Center(child: _showSpinKit())));
  }

  Widget _showSpinKit() {
    return const SpinKitFadingCircle(
        color: AppDimens.appLoaderColor, size: AppDimens.appLoaderSize);
  }
}
