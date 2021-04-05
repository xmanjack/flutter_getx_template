import 'package:get/get.dart';

import '../controllers/public_controller.dart';
import 'package:flutter_getx_template/app/modules/home/controllers/home_controller.dart';

class PublicBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PublicController>(
      () => PublicController(),
    );
    Get.put<HomeController>(
      HomeController(),
    );
  }
}
