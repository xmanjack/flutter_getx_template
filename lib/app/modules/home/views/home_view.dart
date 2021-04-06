import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/modules/home/views/setting_view.dart';
import 'package:flutter_getx_template/app/modules/home/views/technology_view.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          children: [TechnologyView(), SettingView()],
          // children: controller.menuPages,
          index: controller.navMenuIndex(),
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.navMenuIndex(),
          items: controller.navMenuItems,
          onTap: controller.navMenuIndex,
        ),
      ),
    );
  }

  _bottomNavigationBarItem({IconData icon, String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
