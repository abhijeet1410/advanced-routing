import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_params_app/global_controller/user_controller.dart';
import 'package:getx_params_app/pages/dashboard/dashboard_page.dart';
import 'package:getx_params_app/pages/not_found/not_found_page.dart';
import 'package:getx_params_app/utils/app_theme.dart';
import 'utils/app_page_routes.dart';
import 'utils/preference/preference_manager.dart';
import 'utils/preference/preference_manager_impl.dart';

Future<void> main() async {
  Get.put<UserController>(UserController());
  PreferenceManager preference =
      Get.put<PreferenceManager>(PreferenceManagerImpl());
  await preference.initStorage();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      title: 'GetX Params App',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: AppThemes.lightTheme,
      defaultTransition: kIsWeb ? Transition.fadeIn : null,
      getPages: AppPages.pages,
      routeInformationParser:
          GetInformationParser(initialRoute: DashboardPage.routeName),
      unknownRoute: GetPage(
        name: NotFoundPage.routeName,
        page: () => NotFoundPage(),
        participatesInRootNavigator: true,
        preventDuplicates: true,
        transition: Transition.noTransition,
      ),
    );
  }
}
