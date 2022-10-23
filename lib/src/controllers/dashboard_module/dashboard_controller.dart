import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:login_getx_mvc_demo/src/models/dashboard_module/user_list_response.dart';
import 'package:login_getx_mvc_demo/src/local_services/app_helpers.dart';
import 'package:login_getx_mvc_demo/src/network_services/network_constants.dart';
import 'package:login_getx_mvc_demo/src/network_services/network_requests/dashboard_module_requests.dart';

// Dashboard Page [Controller] To handle UI State & Events in Dashboard Page.
class DashboardController extends GetxController {
  RxBool isLoading = false.obs;
  late List<UserListResponse> userListResponseList = [];

  @override
  void onInit() {
    _getUsersList();
    super.onInit();
  }

  Future<void> _getUsersList() async {
    isLoading(true);
    if (await AppHelpers().isNetworkPresent()) {
      try {
        Response userListRes = await DashboardRequests().getUsersList();
        if (userListRes.statusCode == NetworkConstants.apiSuccessStatus) {
          _populateUserList(userListRes);
        } else {
          AppHelpers().showSomethingWrongSnack();
        }
      } on Exception catch (_) {
        debugPrint(_.toString());
      }
    } else {
      AppHelpers().showNetworkErrorSnack();
    }
  }

  void _populateUserList(Response userListRes) {
    for (int userIndex = 0; userIndex < userListRes.body.length; userIndex++) {
      userListResponseList
          .add(UserListResponse.fromJson(userListRes.body[userIndex]));
    }
    isLoading(false);
  }
}
