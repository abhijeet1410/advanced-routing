import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_params_app/pages/dashboard/sub_pages/explore/explore_page.dart';
import 'sub_pages/home/home_page.dart';
import 'sub_pages/profile/profile_page.dart';

class DashboardController extends GetxController {
  RxInt index = RxInt(0);

  List<Widget> pages = [HomePage(), ExplorePage(), ProfilePage()];

  get currentPage => pages[index.value];

  @override
  void onInit() {
    super.onInit();
  }
}
