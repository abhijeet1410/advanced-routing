import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_params_app/global_controller/user_controller.dart';
import 'package:getx_params_app/models/user.dart';
import 'package:getx_params_app/pages/dashboard/dashboard_page.dart';
import 'package:getx_params_app/utils/app_primary_button.dart';
import 'package:getx_params_app/utils/preference/preference_manager.dart';
import 'package:getx_params_app/utils/preference/preference_manager_impl.dart';
import 'package:getx_params_app/utils/snackbar_helper.dart';

class LoginController extends GetxController {
  String? email = '', pw = '';
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<AppPrimaryButtonState> buttonKey =
      GlobalKey<AppPrimaryButtonState>();
  late Rx<AutovalidateMode> autoValidateMode;

  @override
  void onInit() {
    super.onInit();
    autoValidateMode = Rx<AutovalidateMode>(AutovalidateMode.disabled);
  }

  @override
  void dispose() {
    autoValidateMode.close();
    super.dispose();
  }

  void onEmailSaved(String? newValue) {
    email = newValue!.trim();
  }

  void onPwSaved(String? newValue) {
    pw = newValue!.trim();
  }

  loginEmail() {
    if (email == "admin@mail.com" && pw == "Admin@123") {
      final preferenceManager = Get.find<PreferenceManager>();
      preferenceManager.storeAccessToken("12345");
      AppSnackBarUtil.show("Login Successful");
      // Get.find<UserController>()
      //     .updateUser(User(id: 1, name: "User Admin", email: "admin@mail.com"));
      Get.rootDelegate.offNamed(DashboardPage.routeName);
    } else {
      AppSnackBarUtil.show("Login Failure");
    }
  }
}
