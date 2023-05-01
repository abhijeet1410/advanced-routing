import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_params_app/global_controller/user_controller.dart';
import 'package:getx_params_app/pages/dashboard/dashboard_page.dart';
import 'package:getx_params_app/pages/login/login_page.dart';
import 'package:getx_params_app/utils/preference/preference_manager.dart';

class AuthCheckMiddleware extends GetMiddleware {
  @override
  Future<GetNavConfig?> redirectDelegate(GetNavConfig navConfig) async {
    final userController = Get.isRegistered<UserController>()
        ? Get.find<UserController>()
        : Get.put<UserController>(UserController(), permanent: true);
    final preferenceManager = Get.find<PreferenceManager>();
    final token = preferenceManager.accessToken;
    final user = userController.state;
    if (token != null) {
      //userController.updateUser(user);
      return navConfig;
    } else {
      return GetNavConfig.fromRoute(LoginPage.routeName);
    }
  }
}

class NoAuthCheckMiddleware extends GetMiddleware {
  @override
  Future<GetNavConfig?> redirectDelegate(GetNavConfig route) async {
    final userController = Get.isRegistered<UserController>()
        ? Get.find<UserController>()
        : Get.put<UserController>(UserController(), permanent: true);
    final preferenceManager = Get.find<PreferenceManager>();
    final token = preferenceManager.accessToken;
    final user = userController.state;
    if (token != null) {
      return GetNavConfig.fromRoute(DashboardPage.routeName);
    } else {
      return route;
    }
  }
}
