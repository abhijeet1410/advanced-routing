import 'package:get/get.dart';
import 'package:getx_params_app/pages/dashboard/dashboard_controller.dart';

class DashboardBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(DashboardController());
  }
}
