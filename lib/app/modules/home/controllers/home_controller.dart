import 'package:get/get.dart';
import '../home_model.dart';
import 'package:flutter/material.dart';

class _TabNav extends GetView<HomeController> {
  final HomeScreenModel model;
  _TabNav(this.model);
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(model.navKey),
      onGenerateRoute: (settings) =>
          MaterialPageRoute(builder: (_) => PageColorListV2(model: model)),
    );
  }
}

class PageColorListV3 extends StatelessWidget {
  final HomeScreenModel model;
  const PageColorListV3({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(model.name)),
      body: InkWell(
        child: Text("Hello v2"),
        onTap: () => Get.to(PageColorListV2(model: model), id: model.navKey),
      ),
    );
  }
}

class PageColorListV2 extends StatelessWidget {
  final HomeScreenModel model;
  const PageColorListV2({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(model.name)),
      body: InkWell(
        child: Text("Hello"),
        onTap: () => Get.to(PageColorListV3(model: model), id: model.navKey),
      ),
    );
  }
}

class HomeController extends GetxController {
  final homeScreensData = <HomeScreenModel>[
    HomeScreenModel(
        name: 'Technology', navKey: 1, icon: Icon(Icons.science_sharp)),
    HomeScreenModel(
        name: 'Setting',
        navKey: 2,
        icon: Icon(Icons.settings_applications_sharp)),
  ];

  List<Widget> _pages;
  // get navigators.
  List<Widget> get menuPages =>
      _pages ??= homeScreensData.map((e) => _TabNav(e)).toList();

  List<BottomNavigationBarItem> get navMenuItems => homeScreensData
      .map((e) => BottomNavigationBarItem(icon: e.icon, label: e.name))
      .toList();

  final navMenuIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
