import 'package:get/get.dart';
import 'package:getx_params_app/pages/login/login_controller.dart';

class LoginBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(LoginController());
  }

}