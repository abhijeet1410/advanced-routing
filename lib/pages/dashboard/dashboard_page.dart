import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_params_app/pages/dashboard/dashboard_controller.dart';
import 'package:getx_params_app/pages/dashboard/sub_pages/home/home_page.dart';
import '../settings/settings_page.dart';

class DashboardPage extends GetResponsiveView {
  static const routeName = "/";

  @override
  final DashboardController controller = DashboardController()..onInit();

  @override
  Widget? desktop() {
    return Obx(
      () => Scaffold(
        body: Row(
          children: [
            Container(
              height: Get.height,
              width: 100,
              decoration: const BoxDecoration(
                  border: Border.fromBorderSide(
                      BorderSide(color: Colors.grey, width: 1))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DashboardMenuItem('/home', controller.index.value == 0, () {
                    controller.index.value = 0;
                  }),
                  const SizedBox(
                    height: 70,
                  ),
                  DashboardMenuItem('/explore', controller.index.value == 1, () {
                    controller.index.value = 1;
                  }),
                  const SizedBox(
                    height: 70,
                  ),
                  DashboardMenuItem('/profile', controller.index.value == 2, () {
                    controller.index.value = 2;
                  }),
                ],
              ),
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () {
                    Get.rootDelegate.toNamed(SettingsPage.routeName);
                  },
                ),
                Expanded(child: controller.currentPage)
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class DashboardMenuItem extends StatelessWidget {
  String path;
  bool isSelected;
  VoidCallback onTap;

  DashboardMenuItem(this.path, this.isSelected, this.onTap);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        path == '/home'
            ? Icons.home
            : path == '/explore'
                ? Icons.explore
                : Icons.person,
        color: isSelected ? Colors.blue : null,
      ),
      onPressed: onTap,
    );
  }
}
