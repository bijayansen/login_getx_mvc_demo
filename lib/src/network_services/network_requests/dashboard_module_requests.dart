import 'package:get/get.dart';
import 'package:login_getx_mvc_demo/src/network_services/network_constants.dart';

class DashboardRequests extends GetConnect {
  // [Configuration] Of Dashboard Module Requests.
  DashboardRequests() {
    timeout = NetworkConstants.defaultTimeOutDuration;
  }

  // Getting Users List Via API Endpoint.
  Future<Response> getUsersList() async =>
      await get(NetworkConstants.usersListPoint);
}
