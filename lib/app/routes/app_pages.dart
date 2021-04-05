import 'package:get/get.dart';

import 'package:flutter_getx_template/app/modules/home/bindings/home_binding.dart';
import 'package:flutter_getx_template/app/modules/home/views/home_view.dart';
import 'package:flutter_getx_template/app/modules/public/bindings/public_binding.dart';
import 'package:flutter_getx_template/app/modules/public/views/public_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.PUBLIC;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PUBLIC,
      page: () => PublicView(),
      binding: PublicBinding(),
    ),
  ];
}
