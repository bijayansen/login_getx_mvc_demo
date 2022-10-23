import 'package:flutter/cupertino.dart';
import 'package:login_getx_mvc_demo/src/utils/app_dimens.dart';

// To Maintain [Consistency Of Spacing] Between [UI Elements & Components] In Screens.
class SpaceManager {
  Widget primarySpacing({bool isWidth = false}) {
    return isWidth
        ? const SizedBox(width: AppDimens.primaryAppSpace)
        : const SizedBox(height: AppDimens.primaryAppSpace);
  }

  Widget secondarySpacing({bool isWidth = false}) {
    return isWidth
        ? const SizedBox(width: AppDimens.secondaryAppSpace)
        : const SizedBox(height: AppDimens.secondaryAppSpace);
  }

  Widget tertiarySpacing({bool isWidth = false}) {
    return isWidth
        ? const SizedBox(width: AppDimens.tertiaryAppSpace)
        : const SizedBox(height: AppDimens.tertiaryAppSpace);
  }

  Widget quaternarySpacing({bool isWidth = false}) {
    return isWidth
        ? const SizedBox(width: AppDimens.quaternaryAppSpace)
        : const SizedBox(height: AppDimens.quaternaryAppSpace);
  }

  Widget emptySpace() {
    return const SizedBox(height: AppDimens.zeroPadding);
  }
}
