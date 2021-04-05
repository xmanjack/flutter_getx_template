import 'package:get/get.dart';

import 'package:flutter_getx_template/app/modules/home/controllers/setting_controller.dart';
import 'package:flutter_getx_template/app/modules/home/controllers/technology_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SettingController>(
      () => SettingController(),
    );
    Get.lazyPut<TechnologyController>(
      () => TechnologyController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
