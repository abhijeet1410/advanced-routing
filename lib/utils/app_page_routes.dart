import 'package:get/get.dart';
import 'package:getx_params_app/pages/dashboard/dashboard_bindings.dart';
import 'package:getx_params_app/pages/dashboard/dashboard_page.dart';
import 'package:getx_params_app/pages/login/login_bindings.dart';
import 'package:getx_params_app/pages/login/login_page.dart';
import 'package:getx_params_app/pages/settings/settings_bindings.dart';
import 'package:getx_params_app/pages/settings/settings_page.dart';
import 'package:getx_params_app/utils/auth_check_middleware.dart';

///
/// Created by Sunil Kumar from Boiler plate
///
class AppPages {
  /// NOT TO BE USE NOW
  static final pages = [
    GetPage(
        name: DashboardPage.routeName,
        page: () => DashboardPage(),
        binding: DashboardBindings(),
        participatesInRootNavigator: true,
        preventDuplicates: true,
        transition: Transition.noTransition,
        middlewares: [AuthCheckMiddleware()]
    ),
    GetPage(
        name: LoginPage.routeName,
        page: () => LoginPage(),
        binding: LoginBindings(),
        participatesInRootNavigator: true,
        preventDuplicates: true,
        middlewares: [NoAuthCheckMiddleware()]
    ),
    GetPage(
        name: SettingsPage.routeName,
        page: () => SettingsPage(),
        binding: SettingsBindings(),
        participatesInRootNavigator: true,
        middlewares: [AuthCheckMiddleware()]),
  ];
}
